#!/bin/bash

# Install software 
unamestr=$(uname -a)
if [[ "$unamestr" == *'Darwin'* ]] 
then 
  bash ./osx/install.sh;
elif [[ "$unamestr" == *'Ubuntu'* ]]
then 
  bash ./ubuntu/install.sh;
elif [[ "$unamestr" == *'ARCH'* ]] 
then
  bash ./arch/install.sh;
fi

bash ./commons/install.sh;

echo "Copying vimrc"
cp .vimrc ~/.vimrc

echo "Done"


