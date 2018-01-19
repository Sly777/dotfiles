#!/bin/bash

# Install software 
unamestr=$(uname -a)
if [[ "$unamestr" == *'Darwin'* ]] 
then 
  bash ./osx/install.sh;
else 
  echo $unamestr" not supported" 
fi

bash ./commons/install.sh;

echo "Copying tmux.conf"
cp .tmux.conf ~/.tmux.conf

echo "Done"


