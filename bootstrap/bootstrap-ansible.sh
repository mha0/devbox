# system upgrade
sudo apt update
sudo apt upgrade --yes

# install tools preferred for removing packages by ansible, resolve warnings
sudo apt install aptitude
sudo apt install python-apt

# install Ansible
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
