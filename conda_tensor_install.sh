#!/usr/bin/env bash

cd ~
wget http://repo.continuum.io/archive/Anaconda2-4.1.1-Linux-x86_64.sh
bash Anaconda2-4.1.1-Linux-x86_64.sh -b
echo 'PATH="/home/ubuntu/anaconda2/bin:$PATH"' >> .bashrc
source ~/.bashrc/

sudo apt-get install -y update
sudo apt-get install -y upgrade
sudo apt-get install -y dist-upgrade
sudo apt-get install -y autoremove
sudo apt-get install python-setuptools
sudo apt-get install easy_install

conda create -n tensorflow python=2.7 
source activate tensorflow
sudo apt-get install libsm6 libxrender1 libfontconfig1
conda install matplotlib
export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.9.0-cp27-none-linux_x86_64.whl
pip install --upgrade $TF_BINARY_URL

