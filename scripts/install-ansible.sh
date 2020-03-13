#!/usr/bin/env bash
sudo apt-add-repository --yes ppa:ansible/ansible
sudo apt-get update

# install tools for removing packages used by ansible, resolve warnings
# sudo apt-get --yes install aptitude
# sudo apt-get --yes install python-apt

sudo apt-get --yes install ansible
ansible --version
