#!/bin/bash
echo Updating tag $1
ansible-playbook -i ansible/inventory.yml --connection=local ansible/playbook.yml --ask-become-pass --tags=$1
