#!/bin/bash

###########################################################################
# References:
#
# https://github.com/idea-fasoc/datasheet-scrubber
#
###########################################################################

#Python 3 install
sudo apt-get install -y python3-pip
sudo apt-get install build-essential libssl-dev libffi-dev python3-dev
sudo apt-get install python-testresources

#Insalling Various packagess
python3 -m pip install --upgrade pip
pip3 install --upgrade keyrings.alt
python3 -m pip install pandas
python3 -m pip install -U scipy
python3 -m pip install matplot
python3 -m pip install matplotlib
python3 -m pip install pdfminer.six
python3 -m pip install pypdf2
python3 -m pip install request
python3 -m pip install lxml
python3 -m pip install tabula-py
python3 -m pip install sklearn
python3 -m pip install regex
python3 -m pip install keras
python3 -m pip install tensorflow
python3 -m pip install pdf2image
python3 -m pip install pillow
python3 -m pip install pytesseract
python3 -m pip install -U numpy
python3 -m pip install opencv-python
python3 -m pip install gensim
python3 -m pip install nltk

#Build scrubber
git clone --recursive git@github.com:idea-fasoc/datasheet-scrubber.git

#Download Datasheets
cd datasheet-scrubber
wget https://www.dropbox.com/s/ad4nolrpxx4pks6/All_pdf.zip
unzip ALL_pdf.zip

