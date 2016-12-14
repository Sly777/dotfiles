#!/bin/bash

# Install software 
unamestr=$(uname)
if [[ "$unamestr" == 'Darwin' ]] 
then 
  bash ./osx/install.sh;
fi

# Configure 
cp .vimrc ~/.vimrc


