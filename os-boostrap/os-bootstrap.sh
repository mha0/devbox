if [ $# -eq 0 ]
  then
    echo "No ssh key name supplied"
    exit 1
fi

# system upgrade
sudo apt update
sudo apt upgrade --yes

# install open-vm-tools-desktop
sudo apt install open-vm-tools-desktop

# install git
sudo apt install git
git config --global user.email "$1"

# generate ssh key
ssh-keygen -t rsa -b 4096 -C "$1"
