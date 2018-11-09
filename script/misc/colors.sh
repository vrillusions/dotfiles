#!/bin/bash
# shellcheck disable=SC1117
#
#   This file echoes a bunch of color codes to the
#   terminal to demonstrate what's available.  Each
#   line is the color code of one forground color,
#   out of 17 (default + 16 escapes), followed by a
#   test use of that color on all nine background
#   colors (default + 8 escapes).
#
# src: http://tldp.org/HOWTO/Bash-Prompt-HOWTO/x329.html
#

T='gYw'   # The test text

echo -e "\n                 40m     41m     42m     43m\
     44m     45m     46m     47m";

for FGs in '    m' '   1m' '  30m' '1;30m' '  31m' '1;31m' '  32m' \
           '1;32m' '  33m' '1;33m' '  34m' '1;34m' '  35m' '1;35m' \
           '  36m' '1;36m' '  37m' '1;37m';
  do FG=${FGs// /}
  echo -en " $FGs \033[$FG  $T  "
  for BG in 40m 41m 42m 43m 44m 45m 46m 47m;
    do echo -en "$EINS \033[$FG\033[$BG  $T  \033[0m";
  done
  echo;
done
echo
echo 'Usage: prefix above values wih "\033[".'
echo 'For example to get red text you would enter the following:'
echo
echo '    \033[0;31mYOUR RED TEXT\033[0m'
echo
echo 'Using "0;31m" is the same as "31m" but ensures background color is reset.'
echo 'The \033[0m resets the color at the end. Also if using echo remember to'
echo 'add the -e option'
echo
echo 'When setting for PS1 also surround escape sequence with "\[" and "\]".'
echo 'This marks the text as non-printing so bash can still estimate width.'
echo
echo '    \[\033[0;31m\]YOUR RED TEXT\[\033[0m\]'
echo
