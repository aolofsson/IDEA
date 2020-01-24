#!/bin/bash

###########################################################################
# References:
#
# https://theopenroadproject.org
# https://github.com/The-OpenROAD-Project/OpenROAD-flow

###########################################################################

#Build OpenROAD (on Ubuntu 18.04)
sudo apt-get update
sudo apt-get install -y libx11-dev libboost-dev libcurl4 cmake swig flex libtool zlib1g-dev tcl-dev tk-dev libjpeg-dev
git clone --recursive https://github.com/The-OpenROAD-Project/OpenROAD.git
mkdir -p OpenROAD/build
cd OpenROAD/build
cmake ..
make
sudo make install

