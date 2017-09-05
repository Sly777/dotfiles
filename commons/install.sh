# Configure git 

echo "Setting up vim as editor for git"
git config --global core.editor $(which vim)

echo "Configuring git"
cp osx/.gitignore ~/.gitignore
git config --global core.excludesfile '~/.gitignore'

echo "Copying bash files"
cp .bash_profile ~/.bash_profile

# Emacs config
echo "Configuring .emacs"
cp .emacs ~/.emacs

EDITORCONFIG_PATH=./editorconfig-emacs
if [ ! -e $EDITORCONFIG_PATH ]; then
  echo "Cloning editorconfig-emacs"
  git clone https://github.com/editorconfig/editorconfig-emacs $EDITOR_CONFIG
  cp $EDITORCONFIG_PATH/*.el ~/.emacs.d/lisp
  echo "Done"
fi 

#  Node global packages
echo "Installing webpack"
if ! npm list -g webpack; then
  sudo npm install webpack -g 
fi

echo "Installing webpack-dev-server"
if ! npm list -g webpack-dev-server; then
  sudo npm install webpack-dev-server -g
fi



