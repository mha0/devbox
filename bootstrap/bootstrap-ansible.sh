# system upgrade
sudo apt-get update
sudo apt-get --yes upgrade 

# install tools preferred for removing packages by ansible, resolve warnings
sudo apt-get --yes install aptitude 
sudo apt-get --yes install python-apt 

# install Ansible
sudo apt-get --yes install software-properties-common 
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt-get --yes install ansible
