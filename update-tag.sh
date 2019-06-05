echo Updating tag $1
ansible-playbook -i ansible/devbox.yml --connection=local ansible/playbook.yml --ask-become-pass --tags=$1
