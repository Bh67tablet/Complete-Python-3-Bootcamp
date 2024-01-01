#/bin/bash!
sudo yum -y install bzip2
sudo yum -y install git
wget https://repo.anaconda.com/archive/Anaconda3-2023.09-0-Linux-x86_64.sh
bash Anaconda3-2023.09-0-Linux-x86_64.sh -b
export PATH="/home/ec2-user/anaconda3/bin:$PATH"
#
git clone https://github.com/Bh67tablet/Complete-Python-3-Bootcamp.git
cd Complete-Python-3-Bootcamp
conda install jupyter -yq
jupyter notebook --generate-config
nohup jupyter notebook --no-browser --port=8888 --ip=0.0.0.0 &
cat nohup.out
