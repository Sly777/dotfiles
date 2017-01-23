#!/bin/bash

# Install software 
unamestr=$(uname -a)
if [[ "$unamestr" == *'Darwin'* ]] 
then 
  bash ./osx/install.sh;
elif [[ "$unamestr" == *'ARCH'* ]] 
then
  bash ./arch/install.sh;
else
  bash ./ubuntu/install.sh;
fi

# Configure 
cp .vimrc ~/.vimrc


