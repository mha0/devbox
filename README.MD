# Ubuntu 20.04.1 LTS Devbox

Automated provisioning of an Ubuntu virtual machine with development tools.

This box uses the Bento Ubuntu Vagrant Box as a base. HashiCorp, the owner of Vagrant and Packer, [recommends these over the official Canonical Ubuntu Vagrant boxes](https://www.vagrantup.com/docs/boxes#official-boxes).

## Features
* Based on Ubuntu LTS
* Installs gnome but omits packages not needed for development
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
* Install required vagrant plugins by executing `install-vagrant.sh`

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

## Notes

The [3d acceleration on VirtualBox is broken](https://askubuntu.com/questions/1035410/ubuntu-18-04-gnome-hangs-on-virtualbox-with-3d-acceleration-enabled). Just disable it which disables some of the desktop environment's graphical effects and your performance will be just fine.

Installs the regular [Gnome desktop](https://packages.ubuntu.com/focal/ubuntu-gnome-desktop) EXCLUDING the following packages:
* aisleriot: GNOME solitaire card game collection
* bluez: Bluetooth tools and daemons
* bluez-cups: Bluetooth printer driver for CUPS
* cheese: tool to take pictures and videos from your webcam
* deja-dup: Backup utility
* gnome-bluetooth
* gnome-calendar
* gnome-mahjongg
* gnome-mines
* gnome-sudoku
* gnome-todo
* libreoffice: Prductivity suite with an open-source word, excel etc.
* pulseaudio-module-bluetooth: Bluetooth module for PulseAudio sound server
* rhythmbox: music player and organizer for GNOME
* shotwell: digital photo organizer
* simple-scan: Simple Scanning Utility
* thunderbird: E-Mail client
* totem: Simple media player for the GNOME desktop based on GStreamer
* transmission-gtk: lightweight BitTorrent client (GTK+ interface)
