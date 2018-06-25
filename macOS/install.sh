# install Homebrew
which -s brew
if [[ $? != 0 ]] ; then 
  echo "installing homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "updating brew packages..."  
  brew update
fi

#iterm2
if ! brew cask ls --versions iterm2  > /dev/null ; then
  echo "installing iterm2..."  
  brew cask install iterm2
fi

# latex tools
if ! brew cask ls --versions mactex > /dev/null ; then
  echo "installing mactex..."  
  brew cask install mactex
fi
echo "installing latex extension for vs-code..."
code --install-extension James-Yu.latex-workshop

# node 
if ! brew ls --versions node > /dev/null ; then
  brew install node  
else 
  brew upgrade node 
fi 

# node tools
# gulp 
if ! npm list -g gulp > /dev/null ; then 
  npm install -g gulp
else 
  npm update -g gulp
fi 

#elm 
if ! brew ls --versions elm > /dev/null ; then
  brew install elm 
else 
  brew upgrade elm 
fi

#python 
pyframeworks="/usr/local/Frameworks"
if [ -d "$pyframeworks" ]; then
  sudo mkdir -p $pyframeworks
  sudo chown $(whoami):admin $pyframeworks  
fi

if ! brew ls --versions python3 > /dev/null ; then
  brew install python3 
  brew link python
else 
  brew upgrade python3 
fi


if ! brew ls --versions pip3 > /dev/null ; then
  brew install pip3 
else 
  brew upgrade pip3
fi

# vim
# plugin manager 
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
