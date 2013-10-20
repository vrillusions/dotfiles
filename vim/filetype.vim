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

  " text filetype
  au! BufRead,BufNewFile *.{txt,TXT} setfiletype text
  au! BufRead,BufNewFile README setfiletype text

  " Git config
  " set it for gitconfig and gitconfig.versioned in dotfiles
  au! BufRead,BufNewFile gitconfig{,.versioned} setfiletype gitconfig
augroup END
