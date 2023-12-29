#/bin/bash!
#
# only Debian Linux (apt) !!!
#
# https://dataschool.com/data-modeling-101/running-jupyter-notebook-on-an-ec2-server/
#
sudo apt-get update -y
sudo apt-get install -y expect
sudo apt-get install -y bzip2
#
wget https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh
#
bash Anaconda3-2019.03-Linux-x86_64.sh
#
