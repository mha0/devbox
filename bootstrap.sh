# System upgrade
sudo apt update
sudo apt upgrade --yes

# Install Ansible
sudo apt install ansible --assumeyes

# Add flathub repo
sudo apt install flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
