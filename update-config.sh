#!/bin/bash
echo Updating config
ansible-playbook -i provisioning/inventory provisioning/all-playbook.yml --tags=config
