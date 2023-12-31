#!/bin/bash
cat > /home/ubuntu/reload_bash_shell.sh << EOF
if [ ! -f /home/ubuntu/resume-after-reboot ]
then
  echo "Run Script first time" > /home/ubuntu/log.txt  
  whoami >> /home/ubuntu/log.txt
  sudo apt -y update
  sudo apt -y install bzip2
  wget https://repo.anaconda.com/archive/Anaconda3-2023.09-0-Linux-x86_64.sh
  #bash Anaconda3-2023.09-0-Linux-x86_64.sh
  chmod u+x *.exp
  ./script.exp
  #
  #
  # change it to .bashrc if using bash shell
  echo "bash /home/ubuntu/reload_bash_shell.sh" >> ~/.bashrc
  # create a flag file to check if we are resuming from reboot.
  sudo touch /home/ubuntu/resume-after-reboot
  echo "rebooting.."
  # reboot here
  sudo reboot
  
else 
  echo "resuming script after reboot.." >> /home/ubuntu/log.txt
  whoami >> /home/ubuntu/log.txt
  # Remove the line that we added in bashrc
  sed -i '/^bash/d' ~/.bashrc
  # remove the temporary file that we created to check for reboot
  sudo rm -f /home/ubuntu/resume-after-reboot
  #
  # continue with rest of the script
  conda install jupyter -yq
  jupyter notebook --generate-config
  nohup jupyter notebook --no-browser --port=8888 --ip=0.0.0.0 &
  #
  #
  exit 0
  
fi
exit 0
EOF
chmod u+x /home/ubuntu/reload_bash_shell.sh
sudo su - -c 'su - ubuntu -c "/home/ubuntu/reload_bash_shell.sh"'
