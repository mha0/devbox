if [ $# -eq 0 ]
  then
    echo "No ssh key name supplied"
    exit 1
fi

# system upgrade
sudo apt-get update
sudo apt-get --yes upgrade 

# install open-vm-tools-desktop
sudo apt-get --yes install open-vm-tools-desktop

# install git
sudo apt-get --yes install git
git config --global user.email "$1"

# generate ssh key
ssh-keygen -t rsa -b 4096 -C "$1"
