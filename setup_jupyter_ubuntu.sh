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
# bash Anaconda3-2019.03-Linux-x86_64.sh
chmod u+x *.exp
./script.exp
#
source ~/.bashrc
jupyter notebook --generate-config
cat > $HOME/.jupyter/jupyter_notebook_config.py << EOF
conf = get_config()
conf.NotebookApp.ip = '0.0.0.0'
conf.NotebookApp.password = u'YOUR PASSWORD HASH'
conf.NotebookApp.port = 8888
EOF
#
# set your password
#jupyter notebook password
./setJupyterpw.exp
#
# start:
jupyter notebook &
#
# https://github.com/Mohdwajtech/Complete-Python-3-Bootcamp.git
# git clone https://github.com/Bh67tablet/Complete-Python-3-Bootcamp.git
