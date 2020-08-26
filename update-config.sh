#!/bin/bash
echo Updating config
ansible-playbook -i ansible/inventory ansible/all-playbook.yml --tags=config
