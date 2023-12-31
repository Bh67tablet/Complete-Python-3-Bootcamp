#/bin/bash!
#
wget https://repo.anaconda.com/archive/Anaconda3-2023.09-0-Linux-x86_64.sh
bash Anaconda3-2023.09-0-Linux-x86_64.sh
#chmod u+x *.exp
#./script.exp
#
source ~/.bashrc
#
conda install jupyter -yq
#
jupyter notebook --generate-config
#
nohup jupyter notebook --no-browser --port=8888 --ip=0.0.0.0 &
