# system upgrade
sudo apt update
sudo apt upgrade --yes

# install aptitude
sudo apt install aptitude

# install Ansible
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
