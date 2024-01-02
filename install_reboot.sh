#!/bin/bash
cat > /home/ubuntu/reload_bash_shell.sh << EOF
if [ ! -f /home/ubuntu/resume-after-reboot ]
then
  echo "Run Script first time" > /home/ubuntu/log.txt  
  whoami >> /home/ubuntu/log.txt
  sudo apt -y update
  sudo apt -y install bzip2
  #
  #
  #
  echo "bash /home/ubuntu/reload_bash_shell.sh" >> ~/.bashrc
  sudo touch /home/ubuntu/resume-after-reboot
  sudo reboot
  
else 
  echo "resuming script after reboot.." >> /home/ubuntu/log.txt
  whoami >> /home/ubuntu/log.txt
  #
  # Remove the line that we added in bashrc
  sed -i '/^bash/d' ~/.bashrc
  sudo rm -f /home/ubuntu/resume-after-reboot
  #
  # continue with rest of the script
  exit 0
  
fi
exit 0
EOF
chmod u+x /home/ubuntu/reload_bash_shell.sh
sudo su - -c 'su - ubuntu -c "/home/ubuntu/reload_bash_shell.sh"'
