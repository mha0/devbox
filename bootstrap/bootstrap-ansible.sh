# enable atom repo
sudo add-apt-repository --yes ppa:webupd8team/atom

# upgrade packages
sudo apt-get update
sudo apt-get --yes upgrade 

# install tools for removing packages used ansible, resolve warnings
sudo apt-get --yes install aptitude 
sudo apt-get --yes install python-apt 

# install ansible
sudo apt-get --yes install software-properties-common 
sudo apt-add-repository --yes ppa:ansible/ansible
sudo apt-get --yes install ansible

# install ansible roles
ansible-galaxy install --roles-path ~/.ansible/roles jaredhocutt.gnome_extensions
