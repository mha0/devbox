#!/bin/bash
echo Updating tag $1
ansible-playbook -i ansible/inventory ansible/all-playbook.yml --ask-become-pass --tags=$1
