#!/bin/bash

###########################################################################
# References:
#
# https://github.com/LNIS-Projects
#
###########################################################################

#Install Latest Cmake
sudo apt-get install libssl-dev
wget https://github.com/Kitware/CMake/releases/download/v3.16.3/cmake-3.16.3.tar.gz
tar zvf cmake-3.16.3.tar.gz
cd cmake-3.16.3
./bootstrap
make
sudo make install


#Adding g++ 8.x
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt install g++-8
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-8 60 --slave /usr/bin/g++ g++ /usr/bin/g++-8

#Build LS Oracle
sudo apt-get install libreadline-dev
git clone --recursive git@github.com:LNIS-Projects/LSOracle.git --branch demo
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=RELEASE
make

