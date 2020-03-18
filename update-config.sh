#!/bin/bash
echo Updating config
ansible-playbook -i provisioning/inventory provisioning/playbook.yml --tags=config
