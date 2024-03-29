" Don't process this if we already detected it
if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
  " in ubuntu/debian treat anything in /etc/apache2/sites-* as apache config
  " files.
  au! BufNewFile,BufRead /etc/apache2/sites-* setf apache

  " Markdown
  " src: https://github.com/jtratner/vim-flavored-markdown
  au! BufNewFile,BufRead *.{md,mkd,mkdn,mark*} setfiletype ghmarkdown

  " reStructuredText Documentation Format
  " default only grabs *.rst this gets *.rst.txt which is more compatible with
  " windows
  au! BufNewFile,BufRead *.rst.txt setfiletype rst

  " vimoutliner
  " default just does *.otl, this adds *.otl.txt
  au! BufNewFile,BufRead *.otl.txt setfiletype vo_base

  " text filetype
  au! BufRead,BufNewFile *.{txt,TXT} setfiletype text
  au! BufRead,BufNewFile README setfiletype text
  " treat CHANGELOG (the \C enforces case) files as text
  au! BufRead,BufNewFile CHANGELOG\C setfiletype text

  " Git config
  " set it for gitconfig and gitconfig.versioned in dotfiles
  au! BufRead,BufNewFile gitconfig{,.versioned} setfiletype gitconfig

  " Eyaml contains encrypted parts but is still mostly yaml
  au! BufRead,BufNewFile *.eyaml setfiletype yaml
augroup END
