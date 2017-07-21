#!/bin/bash

#script to download all programs for debian linux


cask-programs="virtualbox virtualbox-dkms docker kubernetes-cli"
brew-programs="git nvm scala htop python3"
pylibrary="virtualenv"
repos=[ "https://github.com/stcalica/stcalica.github.io.git", "https://github.com/stcalica/flufflink.git", "https://github.com/stcalica/NginxDockerProxyPass" ] #useful repos for my projects 


#install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#install brew cask to install apps
brew tap phinze/cask
brew install brew-cask 

#install cli and unix-like tools
brew install $brew-programs

#install apps
brew cask install $cask-programs

#install python requirements 
sudo pip install $pylibrary

#create useful directories  
mkdir ~/Code
cd ~/Code

git clone $repos

for i in $(repos); 
do
   git clone $i 
done
