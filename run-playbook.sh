#!/bin/bash
echo Running playbook $1
ansible-playbook -i ansible/inventory.yml --connection=local provisioning/$1-playbook.yml --ask-become-pass
