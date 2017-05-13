
echo "Installing vundle for vim"
VUNDLE_PATH=~/.vim/bundle/Vundle.vim
if [ ! -e $VUNDLE_PATH ]; then
  echo "Cloning"
  git clone https://github.com/VundleVim/Vundle.vim.git $VUNDLE_PATH
  echo "Run VundleInstall inside vim"
fi

vim -c ':PluginInstall' -c 'qa!'

# Configure git 

echo "Setting up vim as editor for git"
git config --global core.editor $(which vim)

echo "Configuring git"
cp osx/.gitignore ~/.gitignore
git config --global core.excludesfile '~/.gitignore'

echo "Copying bash files"
cp .bash_profile ~/.bash_profile



