# install prerequisites
sudo apt install build-essential

# DOwnload NVidia CUDA drivers
wget -P /tmp https://developer.download.nvidia.com/compute/cuda/11.1.1/local_installers/cuda_11.1.1_455.32.00_linux.run

# execute installation process
sudo sh /tmp/cuda_11.1.1_455.32.00_linux.run

# set paths after every login
echo "export PATH=/usr/local/cuda-11.1/bin\${PATH:+:\${PATH}}" >> $HOME/.bashrc
echo "export LD_LIBRARY_PATH=/usr/local/cuda-11.1/lib64 \${LD_LIBRARY_PATH:+:\${LD_LIBRARY_PATH}}" >> $HOME/.bashrc
