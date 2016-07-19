#!/bin/bash

#script to download all programs for debian linux


cask-programs="virtualbox virtualbox-dkms"
brew-programs="git vagrant"
repos=[ "Warehouse" ] #useful repos for my projects 


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
sudo pip install -r requirements.txt


#create useful directories  
mkdir ~/Vagrant
mkdir ~/Code


#add hashicorp vagrant boxes
cd ~/Vagrant && mkdir ~/Vagrant/Uprecise32 && cd ./Uprecise32
vagrant box add precise32 http://files.vagrantup.com/precise32.box 
vagrant init precise32 
#need to edit config.vm.box  to = "precise32" in Vagrantfile  

#cd ~/Vagrant && mkdir ./boot2docker && cd ./boot2docker
#vagrant box add docker https://github.com/mitchellh/boot2docker-vagrant-box/releases/tag/v1.2.0
#vagrant init docker 
#need to edit config.vm.box  to = "docker" in Vagrantfile  
