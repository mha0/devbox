#!/bin/bash
ansible-playbook -i ansible/inventory.yml --connection=local ansible/playbook.yml --ask-become-pass
