# Install vagrant-vbguest to install virtualbox guest utils
unless Vagrant.has_plugin?("vagrant-vbguest")
    raise  Vagrant::Errors::VagrantError.new, "vbguest plugin is missing. Please install it using 'vagrant plugin install vbguest' and rerun 'vagrant up'"
end

# Install vagrant-disksize to allow resizing the vagrant box disk
unless Vagrant.has_plugin?("vagrant-disksize")
    raise  Vagrant::Errors::VagrantError.new, "vagrant-disksize plugin is missing. Please install it using 'vagrant plugin install vagrant-disksize' and rerun 'vagrant up'"
end

Vagrant.configure("2") do |config|
  config.vbguest.auto_update = true

  config.vm.box = "ubuntu/bionic64"

  config.disksize.size = "50GB" # TODO update

  config.vm.provider "virtualbox" do |v|
    v.gui = true
    v.memory = 4096 # TODO update
    v.cpus = 4 # TODO update
    v.name = "devbox" # TODO update
    v.customize ["modifyvm", :id, "--vram", "128"]
    v.customize ["modifyvm", :id, "--graphicscontroller", "vmsvga"]
    v.customize ["modifyvm", :id, "--accelerate3d", "on"]
    v.customize ["modifyvm", :id, "--clipboard-mode", "bidirectional"]
    v.customize ["modifyvm", :id, "--draganddrop", "bidirectional"]
  end

  # copy files
  config.vm.provision "file", source: ".", destination: "$HOME/git/devbox/"

  # install ansible
  config.vm.provision :ansible_local do |ansible|
    ansible.install = true
    ansible.version = "latest"
    ansible.playbook = "provisioning/hello-world-playbook.yml"
    ansible.extra_vars = { ansible_python_interpreter:"/usr/bin/python3" }
  end

  # configure keyboard
  config.vm.provision "shell", inline: "sudo loadkeys ch"

  # install gnome
  config.vm.provision "shell", inline: "sudo apt-get update"
  config.vm.provision "shell", inline: "sudo apt-get -y install ubuntu-gnome-desktop"

  # remove unused packages
  config.vm.provision :ansible_local do |ansible|
    ansible.playbook = "provisioning/strip-ubuntu-playbook.yml"
    ansible.extra_vars = { ansible_python_interpreter:"/usr/bin/python3" }
  end

  # upgrade packages
  config.vm.provision "shell", inline: "sudo apt-get -y upgrade"

  # install all
  config.vm.provision :ansible_local do |ansible|
    ansible.playbook = "provisioning/all-playbook.yml"
    ansible.extra_vars = { ansible_python_interpreter:"/usr/bin/python3" }
    ansible.galaxy_role_file = "provisioning/requirements.yml"
    ansible.galaxy_roles_path = "$HOME/.ansible/roles"
  end

  # cleanup
  config.vm.provision "shell", inline: "sudo apt-get autoclean && sudo apt-get autoremove -y"
end
