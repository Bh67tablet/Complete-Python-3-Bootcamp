sudo su - -c 'echo PATH=$PATH:/home/ec2-user/anaconda3/bin >> ~/.bash_profile'
sudo su - -c 'source ~/.bash_profile & echo $PATH' >>/var/tmp/yum.update 2>&1
sudo su - -c 'su - ec2-user -c "echo PATH=$PATH:/home/ec2-user/anaconda3/bin >> ~/.bash_profile"'
sudo su - -c 'su - ec2-user -c "source ~/.bash_profile & echo $PATH' >>/var/tmp/yum.update 2>&1
