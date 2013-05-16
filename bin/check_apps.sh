#!/bin/bash
# src: https://github.com/jpalardy/dotfiles/blob/1e18294753/bin/deps
#
# Checks if an app is installed and if so display the version. Feel free to add
# and remove programs.

RED=$(tput setaf 1)
GREEN=$(tput setaf 2)

ATTR_RESET=$(tput sgr0)

# check_installed(description, version)
check_installed() {
    local description="$1"
    local version="$2"

    if [ -n "$version" ]; then
        echo "${GREEN}$description${ATTR_RESET} -- ${version}"
    else
        echo "${RED}$description${ATTR_RESET}"
    fi
}

echo "Used in bashrc:"
check_installed "aspell   " $(which aspell >/dev/null   && aspell --version | awk '{print $9}' | sed -e 's/)//g')
echo
echo "Other:"
# In alphabetical order
check_installed "7zip     " $(which 7za >/dev/null      && 7za --help | sed -n 3p | awk '{print $3}')
check_installed "bash     " $(which bash >/dev/null     && bash --version | sed -n 1p | awk '{print $4}')
check_installed "curl     " $(which curl >/dev/null     && curl --version | sed -n 1p | awk '{print $2}')
check_installed "git      " $(which git >/dev/null      && git --version | awk '{print $3}')
check_installed "ipcalc   " $(which ipcalc >/dev/null   && ipcalc --version)
check_installed "lftp     " $(which lftp >/dev/null     && lftp --version | sed -n 1p | awk '{print $4}')
check_installed "minicom  " $(which minicom >/dev/null  && minicom --version | sed -n 1p | awk '{print $3}')
check_installed "nmap     " $(which nmap >/dev/null     && nmap --version | sed -n 2p | awk '{print $3}')
check_installed "php      " $(which php >/dev/null      && php --version | awk '{print $2}')
check_installed "python   " $(which python >/dev/null   && python --version 2>&1 | awk '{print $2}')
check_installed "ruby     " $(which ruby >/dev/null     && ruby --version | awk '{print $2}')
check_installed "rvm      " $(which rvm >/dev/null      && rvm --version | grep . | awk '{print $2}')
check_installed "screen   " $(which screen >/dev/null   && screen --version | awk '{print $3}')
check_installed "vim      " $(which vim >/dev/null      && vim --version | sed -n 1p | awk '{print $5}')
check_installed "wget     " $(which wget >/dev/null     && wget --version | sed -n 1p | awk '{print $3}')
# Leaving this here as an example of dependencies
#check_installed "node.js             " $(which -s node     && node --version)
#check_installed "└─ npm              " $(which -s npm      && npm --version)
#check_installed "    ├─ jslint       " $(which -s npm      && npm ls -g | grep jslint | awk -F@ '{print $2}')
#check_installed "    ├─ less         " $(which -s npm      && npm ls -g | grep less   | awk -F@ '{print $2}')
#check_installed "    ├─ coffee-script" $(which -s npm      && npm ls -g | grep coffee-script   | awk -F@ '{print $2}')
#check_installed "    ├─ uglify-js    " $(which -s npm      && npm ls -g | grep uglify-js       | awk -F@ '{print $2}')
#check_installed "    ├─ forgetful    " $(which -s npm      && npm ls -g | grep forgetful       | awk -F@ '{print $2}')
#check_installed "    └─ csv2par      " $(which -s npm      && npm ls -g | grep csv2par         | awk -F@ '{print $2}')

exit 0
