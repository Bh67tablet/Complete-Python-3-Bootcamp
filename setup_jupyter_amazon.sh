#/bin/bash!
sudo yum -y install bzip2
sudo yum -y install git
sudo su - -c 'su - ec2-user -c "wget https://repo.anaconda.com/archive/Anaconda3-2023.09-0-Linux-x86_64.sh"'
sudo su - -c 'su - ec2-user -c "bash Anaconda3-2023.09-0-Linux-x86_64.sh -b"'
sudo su - -c 'su - ec2-user -c "export PATH="/home/ec2-user/anaconda3/bin:$PATH""'
sudo su - -c 'su - ec2-user -c "git clone https://github.com/Bh67tablet/Complete-Python-3-Bootcamp.git"'
sudo su - -c 'su - ec2-user -c "cd Complete-Python-3-Bootcamp"'
sudo su - -c 'su - ec2-user -c "conda install jupyter -yq"'
sudo su - -c 'su - ec2-user -c "jupyter notebook --generate-config"'
sudo su - -c 'su - ec2-user -c "nohup jupyter notebook --no-browser --port=8888 --ip=0.0.0.0 &"'
sudo su - -c 'su - ec2-user -c "cat nohup.out"'
