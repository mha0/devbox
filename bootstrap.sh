#sudo pacman -Syu ansible
ansible-playbook -i ansible/localhost.yml --connection=local ansible/playbook.yml
