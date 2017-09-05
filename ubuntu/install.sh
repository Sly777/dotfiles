ppa=webupd8team/java

if ! grep -q "^deb .*$ppa" /etc/apt/sources.list /etc/apt/sources.list.d/*;
then
  sudo add-apt-repository "ppa:$ppa"
fi

wget -q -O - https://packages.cloudfoundry.org/debian/cli.cloudfoundry.org.key | sudo apt-key add -
echo "deb http://packages.cloudfoundry.org/debian stable main" | sudo tee /etc/apt/sources.list.d/cloudfoundry-cli.list

sudo apt-get update 

echo "Installing tmux"
sudo apt-get install -y tmux > /dev/null

echo "Installing git" 
sudo apt-get install -y git > /dev/null

echo "Installing cmake"
sudo apt-get install -y build-essential cmake > /dev/null

echo "Installing Python headers"
sudo apt-get install -y python-dev python3-dev > /dev/null

echo "Installing xclip" 
sudo apt-get install -y xclip > /dev/null 

echo "Installing curl"
sudo apt-get install -y curl > /dev/null
echo "Installing Cloud foundry CLI" 
sudo apt-get install -y cf-cli > /dev/null 

# Javascript related stuff

echo "Installing node"
sudo apt-get install -y nodejs > /dev/null
echo "Installing npm"
sudo apt-get install -y npm > /dev/null

# Java related stuff 

echo "Installing java 7"
sudo apt-get install -y oracle-java7-installer > /dev/null

echo "Installing java 8"
sudo apt-get install -y oracle-java8-installer > /dev/null

echo "Installing maven"
sudo apt-get install -y maven > /dev/null

echo "Installing gradle"
sudo apt-get install -y gradle > /dev/null

echo "Installing intellij community edition"
intellij_install=./idea-IC-171.4073.35/bin/idea.sh
if [ ! -f $intellij_install ]; 
then
  wget -O /tmp/intellij.tar.gz https://download.jetbrains.com/idea/ideaIC-2017.1.1.tar.gz
  tar xfz /tmp/intellij.tar.gz 
  eval $intellij_install
fi

