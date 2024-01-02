#/bin/bash!
sudo yum -y install bzip2
sudo yum -y install git
sudo su - -c 'su - ec2-user -c "echo PATH=$PATH:/home/ec2-user/anaconda3/bin >> ~/.bash_profile"'
sudo su - -c 'su - ec2-user -c "git clone https://github.com/Bh67tablet/Complete-Python-3-Bootcamp.git"'
sudo chmod u+x /home/ec2-user/Complete-Python-3-Bootcamp/*.sh
sudo su - -c 'su - ec2-user -c "source ~/.bashrc & /home/ec2-user/Complete-Python-3-Bootcamp/install_jp.sh"'
