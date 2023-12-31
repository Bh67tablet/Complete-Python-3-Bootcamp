#/bin/bash!
conda install jupyter -yq
jupyter notebook --generate-config
nohup jupyter notebook --no-browser --port=8888 --ip=0.0.0.0 &
