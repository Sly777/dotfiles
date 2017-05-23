#!/bin/bash

# Install software 
unamestr=$(uname -a)
if [[ "$unamestr" == *'Darwin'* ]] 
then 
  bash ./osx/install.sh;
elif [[ "$unamestr" == *'Ubuntu'* ]]
then 
  bash ./ubuntu/install.sh;
fi

bash ./commons/install.sh;

echo "Copying vimrc"
cp .vimrc ~/.vimrc

echo "Copying tmux.conf"
cp .tmux.conf ~/.tmux.conf

echo "Copying ideavimrc"
cp .ideavimrc ~/.ideavimrc

echo "Done"


