#!/bin/bash

#Get zshrc file or similar
filerc=$1

## Apend to rc file
echo '\n# fuck-php' | tee -a $filerc
echo 'alias use_php7.0="sudo update-alternatives --set php /usr/bin/php7.0" && php --version' | tee -a $filerc
echo 'alias use_php7.1="sudo update-alternatives --set php /usr/bin/php7.1" && php --version' | tee -a $filerc
echo 'alias use_php7.2="sudo update-alternatives --set php /usr/bin/php7.2" && php --version' | tee -a $filerc

#set alias now too
alias use_php7.0="sudo update-alternatives --set php /usr/bin/php7.0 && php --version"
alias use_php7.1="sudo update-alternatives --set php /usr/bin/php7.1 && php --version"
alias use_php7.2="sudo update-alternatives --set php /usr/bin/php7.2 && php --version"
