# Ubuntu 18.04 LTS Devbox

Automated provisioning of a virtual machine with development tools based on Ubuntu 18.04 LTS based on Vagrant and Ansible.

## Features
* Based on the official Ubuntu 18.04 LTS
* Strips ubuntu of non-development packages
* Updates and upgrades existing packages with `apt`
* Installs __docker__, __docker-compose__
* Installs the __ZSH__  shell with some plugins using `antigen`
* Installs a predefined list of __apt packages__ and __snaps__
* Sets the __swiss-german keyboard layout__
* Sets __custom gnome keybindings__
* Installs a predefined list of __gnome extensions__

## Requirements
* Install [VirtualBox](https://www.virtualbox.org)
* Install [Vagrant](https://www.vagrantup.com/)
* Install required vagrant plugins by executing `vagrant plugin install vagrant-env vagrant-vbguest vagrant-disksize`

## Usage

### Creating a virtual machine from scratch

1. Adjust the parameters in the `.env` file as needed
1. Execute `vagrant up` - note that this will take quite some time so have some chocolate in the meantime
1. Check `POST-INSTALL-TASKS.MD` for tasks you might have to do manually because it they are not automated by vagrant

### Updating an existing virtual machine

There are multiple options to update an existing machine:

* Use `run-playbook.sh $playbook` to deploy a certain role such as `run-playbook.sh packages` or `run-playbook.sh shell`
* Use `update-tag.sh $tag` to update a specific tag e.g. `update-tag.sh packages` will install all packages across all roles
* Use `update-config.sh` to update all configuration
