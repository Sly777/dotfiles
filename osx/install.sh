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
brew install cmake

echo "Installing git"
brew install git > /dev/null

echo "Installing vim"
brew install vim > /dev/null

echo "Installing nerd fonts"
readonly NERD_FONTS_PATH=nerd-fonts
if [ ! -d $NERD_FONTS_PATH ]; then 
  git clone https://github.com/ryanoasis/nerd-fonts $NERD_FONTS_PATH
  bash -c "cd nerd-fonts && ./install.sh" > /dev/null 
fi

echo "Installing iterm 2"
brew cask install iterm2 > /dev/null

# Java related stuff 

echo "Installing java 8"
brew cask install java > /dev/null

echo "Installing maven"
brew install maven > /dev/null

echo "Installing gradle"
brew install gradle

echo "Installing intellij community edition"
brew cask install intellij-idea-ce > /dev/null



