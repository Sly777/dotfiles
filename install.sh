#!/bin/bash

# Install software 
unamestr=$(uname -a)
if [[ "$unamestr" == *'Darwin'* ]] 
then 
  bash ./osx/install.sh;
fi

echo "Copying vimrc"
cp .vimrc ~/.vimrc

echo "Copying ideavimrc"
cp .ideavimrc ~/.ideavimrc

echo "Done"


