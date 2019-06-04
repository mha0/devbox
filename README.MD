# Ansible Devbox Setup for Ubuntu 18.04 

0. `git clone https://github.com/mha0/devbox.git` 
1. `cd devbox`
1. Use the `./os-bootstrap/os-boostrap.sh` script to update system packages, install open-vm-tools-desktop, install git and generate an ssh keypair.
2. Register the id_rsa.pub at github.com
3. Use the `./os-bootstrap/git-clone-devbox.sh` to ssh clone devbox.

