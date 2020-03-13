#!/usr/bin/env bash

cd /home/vagrant
mkdir -p app
mkdir -p projects
git clone https://github.com/mha0/devbox.git setup
cd setup/ansible
git pull
# TODO remove
git checkout vagrant
#ansible-galaxy install -r requirements.yml
#ansible-playbook playbook.yml
ansible --version
echo "foxx success!"
