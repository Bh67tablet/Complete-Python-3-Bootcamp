#/bin/bash!
jupyter notebook --generate-config
cat > $HOME/.jupyter/jupyter_notebook_config.py << EOF
conf = get_config()
conf.NotebookApp.ip = '0.0.0.0'
conf.NotebookApp.password = u'YOUR PASSWORD HASH'
conf.NotebookApp.port = 8888
EOF
#
# set your password
# jupyter notebook password
#./setJupyterpw.exp
#
# start:
# nohup jupyter notebook --no-browser --port=8888 --ip=0.0.0.0 &
#
# https://github.com/Mohdwajtech/Complete-Python-3-Bootcamp.git
# git clone https://github.com/Bh67tablet/Complete-Python-3-Bootcamp.git