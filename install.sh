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

echo "done"


