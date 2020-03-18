#!/bin/bash
echo Updating tag $1
ansible-playbook -i provisioning/inventory provisioning/playbook.yml --ask-become-pass --tags=$1
