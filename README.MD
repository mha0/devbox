# Ansible Devbox Setup for Ubuntu 18.04 LTS

0. Run `wget https://github.com/mha0/devbox/archive/master.zip && unzip master.zip && rm master.zip` 
1. Run `./devbox-master/bootstrap/bootstrap-vm-tools-and-git.sh $ssh-key-name` to update system packages, install open-vm-tools-desktop, install git and generate an ssh keypair.
2. Register the public ssh key `id_rsa.pub` at github.com.
3. Run `./devbox-master/bootstrap/git-clone-devbox.sh` to ssh clone devbox and cleanup files.
4. Run `cd git/devbox`.
5. Run `./bootstrap/bootstrap-ansible.sh`.
5. Run `./update-all.sh`.
