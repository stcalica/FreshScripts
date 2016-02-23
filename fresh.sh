#!/bin/bash

#script to download all programs for debian linux


$programs = "vim git python-pip virtualbox virtualbox-dkms vagrant"
$repos = [ "Warehouse" ] #useful repos for my projects 


sudo apt-get -y update && sudo apt-get -y upgrade  
sudo apt-get install --assume-yes $programs

sudo pip install -r requirements.txt 
mkdir ~/Desktop/PDFs
mkdir ~/Vagrant
mkdir ~/Code

cd ~/Vagrant && mkdir ~/Vagrant/Uprecise32 && cd ./Uprecise32
vagrant box add precise32 http://files.vagrantup.com/precise32.box 
vagrant init precise32 
#need to edit config.vm.box  to = "precise32" in Vagrantfile  

cd ~/Vagrant && mkdir ./boot2docker && cd ./boot2docker
vagrant box add docker https://github.com/mitchellh/boot2docker-vagrant-box/releases/tag/v1.2.0
vagrant init docker 
#need to edit config.vm.box  to = "docker" in Vagrantfile  