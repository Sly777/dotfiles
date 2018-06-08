#!/bin/bash

# install software 
unamestr=$(uname -a)
if [[ "$unamestr" == *'Darwin'* ]] 
then 
  bash ./macOS/install.sh;
else 
  echo $unamestr" not supported" 
fi

#vim
cp .vimrc ~/.vimrc
#bash profile and scripts
cp .bash_profile ~/.bash_profile
cp -r scripts/. ~/scripts

. ~/.bash_profile
echo "done"


