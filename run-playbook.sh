#!/bin/bash
echo Running playbook $1
ansible-galaxy install --roles-path ~/.ansible/roles jaredhocutt.gnome_extensions
ansible-playbook -i provisioning/inventory provisioning/$1-playbook.yml --ask-become-pass
