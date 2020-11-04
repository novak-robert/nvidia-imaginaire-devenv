# get imaginaire code
mkdir $HOME/repos/imaginaire
cd $HOME/repos/imaginaire
git clone https://github.com/nvlabs/imaginaire

# build imaginaire image
cd imaginaire
sudo bash scripts/build_docker.sh 20.10

# start the imaginaire container
cd scripts
sudo bash start_local_docker.sh 20.10
