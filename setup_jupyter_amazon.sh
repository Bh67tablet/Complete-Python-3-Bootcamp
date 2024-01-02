#/bin/bash!
sudo yum -y install bzip2
sudo yum -y install git
sudo su - -c 'su - ec2-user -c "echo PATH=$PATH:/home/ec2-user/anaconda3/bin >> ~/.bash_profile"'
#sudo su - -c 'su - ec2-user -c "source ~/.bashrc"'
git clone https://github.com/Bh67tablet/Complete-Python-3-Bootcamp.git
cd Complete-Python-3-Bootcamp
cat > install_jp.sh << EOF
#/bin/bash!
wget https://repo.anaconda.com/archive/Anaconda3-2023.09-0-Linux-x86_64.sh
bash Anaconda3-2023.09-0-Linux-x86_64.sh -b
conda install jupyter -yq
jupyter notebook --generate-config
nohup jupyter notebook --no-browser --port=8888 --ip=0.0.0.0 &
cat nohup.out
EOF
sudo chown ec2-user:ec2-user install_jp.sh
sudo chmod u+x install_jp.sh
sudo su - -c 'su - ec2-user -c "source ~/.bashrc & ./install_jp.sh"'
