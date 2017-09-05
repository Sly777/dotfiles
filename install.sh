#!/bin/bash

# Install software 
unamestr=$(uname -a)
if [[ "$unamestr" == *'Darwin'* ]] 
then 
  bash ./osx/install.sh;
elif [[ "$unamestr" == *'Linux'* ]]
then
  if grep -q Microsoft /proc/version
  then
    bash ./wsl/install.sh;
  fi
fi

bash ./commons/install.sh;

echo "Copying tmux.conf"
cp .tmux.conf ~/.tmux.conf

echo "Done"


