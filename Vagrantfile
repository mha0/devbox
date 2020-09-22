Vagrant.require_version ">= 2.2.9"

# Install vagrant-vbguest to install virtualbox guest utils
unless Vagrant.has_plugin?("vagrant-env")
    raise  Vagrant::Errors::VagrantError.new, "vagrant-env plugin is missing. Please install it using 'vagrant plugin install vagrant-env' and rerun 'vagrant up'"
end

# Install vagrant-vbguest to install virtualbox guest utils
unless Vagrant.has_plugin?("vagrant-vbguest")
    raise  Vagrant::Errors::VagrantError.new, "vbguest plugin is missing. Please install it using 'vagrant plugin install vagrant-vbguest' and rerun 'vagrant up'"
end

Vagrant.configure("2") do |config|
  config.env.enable
  config.vbguest.auto_update = true

  config.vm.box = "bento/ubuntu-20.04"

  config.disksize.size = ENV['MAX_DISK_SIZE']

  config.vm.provider "virtualbox" do |v|
    v.gui = true
    v.memory = ENV['MEMORY']
    v.cpus = ENV['CPU']
    v.name = ENV['BOX_NAME']
    v.customize ["modifyvm", :id, "--vram", "128"]
    v.customize ["modifyvm", :id, "--graphicscontroller", "vmsvga"]
    v.customize ["modifyvm", :id, "--accelerate3d", "off"]
    v.customize ["modifyvm", :id, "--clipboard-mode", "bidirectional"]
    v.customize ["modifyvm", :id, "--draganddrop", "bidirectional"]
  end

  # copy files
  config.vm.provision "file", source: ".", destination: "$HOME/git/devbox/"

  # configure shell keyboard
  config.vm.provision "shell", inline: "sudo loadkeys ch"

  # install and upgrade packages
  config.vm.provision "shell", inline: "sudo apt-get update"
  config.vm.provision "shell", inline: "sudo apt-get -y upgrade"

  # install the ansible playbook
  config.vm.provision "shell", inline: "sudo apt-get -y install ansible"
  config.vm.provision :ansible_local do |ansible|
    ansible.playbook = "ansible/all-playbook.yml"
    ansible.galaxy_role_file = "ansible/requirements.yml"
    ansible.galaxy_roles_path = "/home/vagrant/.ansible/roles/"
  end

  # install gnome shell
  config.vm.provision "shell", inline: "sudo apt-get -y install ubuntu-gnome-desktop aisleriot- bluez*- cheese- deja-dup- gnome-bluetooth- gnome-calendar- gnome-mahjongg- gnome-mines- gnome-sudoku- gnome-todo- libreoffice*- pulseaudio-module-bluetooth- rhythmbox- shotwell- simple-scan- thunderbird*- totem- transmission-gtk-"

  # cleanup
  config.vm.provision "shell", inline: "sudo apt-get autoclean && sudo apt-get autoremove -y"
end
