# Install vagrant-vbguest to install virtualbox guest utils
unless Vagrant.has_plugin?("vagrant-env")
    raise  Vagrant::Errors::VagrantError.new, "vagrant-env plugin is missing. Please install it using 'vagrant plugin install vagrant-env' and rerun 'vagrant up'"
end

# Install vagrant-vbguest to install virtualbox guest utils
unless Vagrant.has_plugin?("vagrant-vbguest")
    raise  Vagrant::Errors::VagrantError.new, "vbguest plugin is missing. Please install it using 'vagrant plugin install vagrant-vbguest' and rerun 'vagrant up'"
end

# Install vagrant-disksize to allow resizing the vagrant box disk
unless Vagrant.has_plugin?("vagrant-disksize")
    raise  Vagrant::Errors::VagrantError.new, "vagrant-disksize plugin is missing. Please install it using 'vagrant plugin install vagrant-disksize' and rerun 'vagrant up'"
end

Vagrant.configure("2") do |config|
  config.env.enable
  config.vbguest.auto_update = true

  config.vm.box = "ubuntu/bionic64"

  config.disksize.size = ENV['MAX_DISK_SIZE']

  config.vm.provider "virtualbox" do |v|
    v.gui = true
    v.memory = ENV['MEMORY']
    v.cpus = ENV['CPU']
    v.name = ENV['BOX_NAME']
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
    ansible.galaxy_roles_path = "/home/vagrant/.ansible/roles/"
  end

  # cleanup
  config.vm.provision "shell", inline: "sudo apt-get autoclean && sudo apt-get autoremove -y"
end
