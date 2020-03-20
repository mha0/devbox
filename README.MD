# Ubuntu 18.04 LTS Devbox

This repo enables automated provisioning of a devbox based on Ubuntu LTS using Vagrant and Ansible.

## Features
* Strips ubuntu of non development packages and updates existing packages
* Installs docker, zsh shell with some plugins, and some apt packages and snaps including IntelliJ IDEA Ultimate
* Installs some gnome shell extensions

## Requirements

Install the following before usage:

* Install [Vagrant](https://www.vagrantup.com/)
* Install required vagrant plugins by executing `vagrant plugin install $plugin` e.g. `vagrant plugin install foo` to install plugin `foo`:
    * vagrant-env
    * vagrant-vbguest
    * vagrant-disksize
* Install [VirtualBox](https://www.virtualbox.org)

## Usage

### Creating a virtual machine

0. Adjust the parameters in the `.env` file as needed
0. Execute `vagrant up` - note that this will take quite some time so have some chocolate in the meantime
0. Check `POST-INSTALL-TASKS.MD` for tasks you might have to do manually because it they are not automated by vagrant

### Updating an existing virtual machine

There are multiple options to update an existing machine:

* Use `run-playbook.sh $playbook` to execute a single playbook e.g. `run-playbook.sh shell` or `run-playbook.sh all`
* Use `update-tag.sh $tag` to update a specific tag e.g. `update-tag.sh packages`
* Use `update-config.sh` to update all configuration
