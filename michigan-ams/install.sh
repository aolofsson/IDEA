#!/bin/bash

###########################################################################
# References:
#
# https://github.com/idea-fasoc/fasoc
#
###########################################################################

#Python 3 install
sudo apt-get install -y python3-pip
sudo apt-get install build-essential libssl-dev libffi-dev python3-dev
sudo apt-get install python-testresources

#Insalling Various packagess
python3 -m pip install --upgrade pip
pip3 install --upgrade keyrings.alt
python3 -m pip install matplotlib
python3 -m pip install datetime
python3 -m pip install -U numpy

#Clone FASOC
git clone --recursive git@github.com:idea-fasoc/fasoc.git

#Launch virtual env to make python3 default



