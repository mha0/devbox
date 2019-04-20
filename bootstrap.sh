#sudo dnf upgrade
#sudo dnf install ansible
ansible-playbook -i ansible/localhost.yml --connection=local ansible/playbook.yml --ask-become-pass
