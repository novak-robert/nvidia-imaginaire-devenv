# install prerequisites
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common

# register docker repository
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# install docker
sudo apt-get install docker-ce docker-ce-cli containerd.io

# add current user to execute docker commands
sudo groupadd docker
sudo usermod -aG docker $USER

# restart docker service
sudo systemctl restart docker

# validate docker installation
sudo docker run hello-world

