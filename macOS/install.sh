# install Homebrew
which -s brew
if [[ $? != 0 ]] ; then 
  echo "installing homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "updating brew packages..."  
  brew update
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


