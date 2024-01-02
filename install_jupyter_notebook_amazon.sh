#! /bin/bash
cd /home/ec2-user/Complete-Python-3-Bootcamp
wget https://repo.anaconda.com/archive/Anaconda3-2023.09-0-Linux-x86_64.sh
bash Anaconda3-2023.09-0-Linux-x86_64.sh -b
conda install jupyter -yq
jupyter notebook --generate-config
nohup jupyter notebook --no-browser --port=8888 --ip=0.0.0.0 > /home/ec2-user/Complete-Python-3-Bootcamp/out.log 2>&1 &
cat /home/ec2-user/Complete-Python-3-Bootcamp/out.log
