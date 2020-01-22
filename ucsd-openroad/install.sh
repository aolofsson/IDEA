#!/bin/bash

###########################################################################
# References:
#
# https://theopenroadproject.org
# https://github.com/The-OpenROAD-Project/OpenROAD-flow

###########################################################################

#Update
sudo apt-get update

#Install Docker
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu  $(lsb_release -cs)  stable"
sudo apt-get install docker-ce
sudo systemctl start docker
sudo systemctl enable docker
docker --version
sudo usermod -aG docker $USER

#Build RePlace
git clone --recursive git@github.com:The-OpenROAD-Project/RePlAce.git
sudo apt-get install -y libx11-dev libboost-dev libcurl4 cmake swig flex libtool zlib1g-dev tcl-dev tk-dev libjpeg-dev
cd ~/RePlAce
mkdir build
cd build
cmake ..
make 
make install
cd ../../

#Build OpenDB
git clone https://github.com/The-OpenROAD-Project/OpenDB.git
cd OpenDB
mkdir build
cd build
cmake ..
make
cd ../../

#Build OpenRoad App
#sudo apt-get install glpk-utils libglpk-dev glpk-doc
git clone --recursive https://github.com/The-OpenROAD-Project/OpenROAD.git --branch alpha2.1
mkdir -p OpenROAD/build
cd OpenROAD/build
cmake ..
cmake ..
make

#IO Place
git clone --recursive https://github.com/The-OpenROAD-Project/ioPlacer.git
cd ioPlacer
make PARALLEL=4

#OpenSTA
git clone --recursive git@github.com:The-OpenROAD-Project/OpenSTA.git

#OpenRoad Flow
git clone --recursive https://github.com/The-OpenROAD-Project/OpenROAD-flow.git
cd OpenROAD-flow
make

