# prerequisites
distribution=$(. /etc/os-release;echo $ID$VERSION_ID) \
   && curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add - \
   && curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list


# install GPU support for docker images
sudo apt-get update
sudo apt-get install -y nvidia-docker2

# restart docker
sudo systemctl restart docker

# validate installation
sudo docker run --rm --gpus all nvidia/cuda:11.0-base nvidia-smi