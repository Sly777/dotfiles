# Install Homebrew
which -s brew
if [[ $? != 0 ]] ; then 
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  brew update
fi

# Install software using homebrew

echo "Installing wget"
brew install wget > /dev/null

echo "Installing cmake"
brew install cmake > /dev/null

echo "Installing git"
brew install git > /dev/null

echo "Installing iterm 2"
brew cask install iterm2 > /dev/null

echo "Installing tmux"
brew install tmux > /dev/null

echo "Installing editorconfig"
brew install editorconfig

# Javascript related stuff 

echo "Installing node"
brew install node > /dev/null 

# Java related stuff 

echo "Installing java 8"
brew cask install java > /dev/null

echo "Installing maven"
brew install maven > /dev/null

echo "Installing gradle"
brew install gradle > /dev/null

echo "Installing tomcat"
brew install tomcat > /dev/null 

echo "Installing intellij community edition"
brew cask install intellij-idea-ce > /dev/null



