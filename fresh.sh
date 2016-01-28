#!/bin/bash

#script to download all programs for debian linux


$programs = "vim git python-pip"

sudo apt-get -y update && sudo apt-get -y upgrade  
sudo apt-get install --assume-yes $programs

sudo pip install -r requirements.txt 
