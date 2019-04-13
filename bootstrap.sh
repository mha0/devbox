#sudo pacman -Syu ansible
[ -d "~/.ansible/plugins/modules/aur" ] && git clone https://github.com/kewlfft/ansible-aur.git ~/.ansible/plugins/modules/aur
ansible-playbook -i ansible/localhost.yml --connection=local ansible/playbook.yml --ask-become-pass
