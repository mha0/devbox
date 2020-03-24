#!/bin/bash
echo Running playbook $1
ansible-galaxy install --roles-path /home/vagrant/.ansible/roles/ jaredhocutt.gnome_extensions
ansible-playbook -i provisioning/inventory provisioning/$1-playbook.yml --ask-become-pass
