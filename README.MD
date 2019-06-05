# Ansible Devbox Setup for Ubuntu 18.04 

0. `wget https://github.com/mha0/devbox/archive/master.zip && unzip master.zip && rm master.zip` 
1. Use `./devbox-master/os-bootstrap/bootstrap-vm-tools-and-git.sh $ssh-key-name` script to update system packages, install open-vm-tools-desktop, install git and generate an ssh keypair.
2. Register the id_rsa.pub at github.com
3. Use the `./os-bootstrap/git-clone-devbox.sh` to ssh clone devbox.

