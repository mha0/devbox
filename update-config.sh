#!/bin/bash
ansible-playbook -i ansible/inventory.yml --connection=local ansible/playbook.yml --tags=config
