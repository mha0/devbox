# Ansible Devbox Setup for Ubuntu 18.04 


Use the following bootstrap script to update system packages, install open-vm-tools-desktop, install git and generate an ssh keypair

```
if [ $# -eq 0 ]
  then
    echo "No ssh key name supplied"
    exit 1
fi

# system upgrade
sudo apt update
sudo apt upgrade --yes

# install packages
sudo apt install open-vm-tools-desktop
sudo apt install git
git config --global user.email "$1"

# generate ssh key
ssh-keygen -t rsa -b 4096 -C "$1"
```