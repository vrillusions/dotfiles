# Dotfiles

Have kept this in subversion for a while but finally cleaned up all the sensitive information (`git rebase --interactive` ftw) and making it public.  Not as robust as others I've seen but it works for me.

## Setup

While I don't expect anyone to use this on their system but pick and choose what they want, here's how I set it up on a new computer.

- first off should generate an ssh key and add it to github:

```shell
ssh-keygen -t rsa -b 2048 -N "" \
    -C "${USER}@$(hostname -s)_$(date +%Y-%m-%d)" \
    -f ~/.ssh/id_rsa -q
cat ~/.ssh/id_rsa.pub
```

- after clone, run `./createlinks.sh`
    - for some files I maintain a separate versioned file like my `gitconfig` since my actual one has a signing key and author fields could change if I'm at work.  This will notice I don't have a `gitconfig` and copy from `gitconfig.versioned`.  This will be done to other files as well
    - creates symlinks for the specified files.
- run `git config --global user.email 'user@example.com'` to set your email as it's not in version control to try and keep spam bots at bay.
- if you want, add the `bin` folder to your path. See [Directories](#directories) for details.
- on linux or mac run `bin/vim_maintenance.sh install` to setup a cron entry for that command
- if this is running on a machine where your default git info doesn't match up with github (like at work) don't forget to set those here:

        git config user.email 'user@example.com'
        git config user.name 'Todd Eddy'

## Overrides

Several local files can be set:

- **`~/.bashrc_local_pre`** - This is sourced before running the main bashrc file.  It's described in more detail at [bash.rc options](#bashrc-options)
- **`~/.bashrc_local`** - This is run after the bashrc file.  This is a good place to put config items needed for programs installed on that computer
- **`~/.bash_profile_local`** - This is run after the main bash_profile file
- **`~/.vimrc_local`** - Sourced after the main vimrc file

## bash.rc options

The `~/.bashrc` file can be controlled though some environment variables. These should be placed in `~/.bashrc_local_pre`.

- `$XDG_DATA_HOME`, `$XDG_CACHE_HOME`, `$XDG_CONFIG_HOME` - These are taken from the [XDG Base Directory Specification](http://standards.freedesktop.org/basedir-spec/basedir-spec-latest.html).  They default to the values as specified on that page.  Commonly on mac you may want to set `$XDG_CACHE_DIR` to `$HOME/Library/Caches` which is the standard cache directory on OS X.
- `$PROMPT_HOST_COLOR` - This sets the color in terminal for the `user@host` part. It defaults to bright green `tput setaf 10`.

An example for this file on Mac:

```shell
export XDG_CACHE_HOME="${HOME}/Library/Caches"
# setaf 11 = bright yellow
export PROMPT_HOST_COLOR=$(tput setaf 11)
```

## Directories

These directories don't relate to a program and are not symlinked by default. If it's not specified here then assume it's for a specific program.

- **`_archive/`** - If I no longer have a use for something but I still want to keep it around in case I do in the future, it goes here. This could include one time scripts that I'll never run again but can be good reference for future tasks.
- **`bin/`** - Contains commonly used files. You can get this in your path via two ways. First is to symlink it to `~/bin` assuming you don't have already. The other way is to create `~/.bashrc_local` with the content `export PATH="~/dotfiles/bin:$PATH"`. This isn't done automatically so you know which option to choose or if to even bother with it. Also don't assume if the file doesn't end in an extension that it's a binary. More than likely it isn't.
- **`doc/`** - For the most part these are just quick reference documents. Anything more detailed than that I'll use simplenote or similar
- **`script/`** - Less commonly used scripts.

## Files

A non-exhaustive list of files. Most files should have a `-h` or `--help` option. Also just look at the comments at the top of the file.

- **`bin/mac_defaults.sh`** - (Mac only) contains all the various `defaults write` changes I use. This may need to be run occasionally since the `chflags nohidden` on the library folder seems to reset occasionally.
- **`bin/show_app_versions`** - Checks if a program exists and prints out the version. Can be used beyond initial setup to verify the current version of a program.
- **`bin/vim_maintenance.sh`** - Cleans up the backup directories used by vim. This should be run from cron at regular intervals. Call it like `./vim_maintenance.sh install` and it will attempt to install into cron automatically. This is specific to linux and mac so windows machines will need to handle this some other way at least until I can create a script for windows.
- **`createlinks.sh`** - Run this to create symlinks to various common files. Currently this is only the common ones. Files that are more specific to a single machine aren't included here. Works on both linux and mac.
- **`createlinks.bat`** - A simplified batch file of above to use on windows. All it does is setup symlinks for vim.

## Patching gitconfig file with updates

Should still keep backups but for reference here's how to patch my local gitconfig with the versioned one. Indeed it's rather complicated because the `-I` option doesn't actually work right.

```shell
diff -u -B <(grep -vE '^\s*(signingkey|email)' gitconfig) \
    <(grep -vE '^\s*(signingkey|email)' gitconfig.versioned) \
    | patch --no-backup-if-mismatch -p2 gitconfig
```

Leave out the patch part to see what changes would be applied.
