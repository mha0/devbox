# Ubuntu 18.04 LTS Devbox

This repo enables automated provisioning of a devbox based on Ubuntu LTS using Vagrant and Ansible.

## Requirements

Install the following before usage:

* [Vagrant](https://www.vagrantup.com/)
  * The vbguest plugin. Install it by executing `vagrant plugin install vbguest`
  * The vagrant-disksize plugin. Install it by executing `vagrant plugin install vbguest`
* [VirtualBox](https://www.virtualbox.org)

## Usage

### Creating the virtual machine

0. Adjust the parameters in the `.env` file as needed
0. Execute `vagrant up` - Note that this will take quite some time
0. Check `POST-INSTALL-TASKS.MD` for stuff you might have to do manually because it is not automated by vagrant

### Updating an existing virtual machine

There are multiple options to update an existing machine:

* Use `run-playbook.sh $playbook` to execute a single playbook e.g. `run-playbook.sh shell` or `run-playbook.sh all`
* Use `update-tag.sh $tag` to update a specific tag e.g. `update-tag.sh packages`
* Use `update-config.sh` to update all configuration
