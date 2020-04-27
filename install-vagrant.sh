#!/bin/bash
echo Installing vagrant and plugins
sudo apt-get install vagrant
vagrant plugin install vagrant-env vagrant-vbguest vagrant-disksize
