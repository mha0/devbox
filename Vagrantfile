Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"

  config.vm.provider "virtualbox" do |v|
    v.gui = true
    v.memory = 2096
    v.cpus = 2
    v.name = "mat-devbox"
    v.customize ["modifyvm", :id, "--vram", "128"]
    v.customize ["modifyvm", :id, "--graphicscontroller", "vmsvga"]
    v.customize ["modifyvm", :id, "--accelerate3d", "on"]
    v.customize ["modifyvm", :id, "--clipboard-mode", "bidirectional"]
    v.customize ["modifyvm", :id, "--draganddrop", "bidirectional"]
  end

  # config.vm.provision "shell", inline: "sudo apt-get update"

  # remove unused packages
  # config.vm.provision "shell", inline: "sudo apt-get -y remove --purge libreoffice*"
  # config.vm.provision "shell", inline: "sudo apt-get -y remove --purge thunderbird"
  # config.vm.provision "shell", inline: "sudo apt-get -y remove --purge shotwell"
  # config.vm.provision "shell", inline: "sudo apt-get -y remove --purge rhythmbox"
  # config.vm.provision "shell", inline: "sudo apt-get -y remove --purge gnome-mines"
  # config.vm.provision "shell", inline: "sudo apt-get -y remove --purge byobu"
  # config.vm.provision "shell", inline: "sudo apt-get -y remove --purge gnome-mahjongg"
  # config.vm.provision "shell", inline: "sudo apt-get -y remove --purge gnome-calendar"
  # config.vm.provision "shell", inline: "sudo apt-get -y remove --purge gnome-sudoku"
  # config.vm.provision "shell", inline: "sudo apt-get -y remove --purge gnome-todo"
  # config.vm.provision "shell", inline: "sudo apt-get -y remove --purge gnome-video-effects"

  # config.vm.provision "shell", inline: "sudo apt-get -y upgrade"

  # install gnome
  # config.vm.provision "shell", inline: "sudo apt-get -y install ubuntu-gnome-desktop"

  # cleanup
  # config.vm.provision "shell", inline: "sudo apt-get autoclean && sudo apt-get autoremove && sudo apt-get clean"

  # configure keyboard
  # config.vm.provision "shell", inline: "gsettings set org.gnome.desktop.input-surces [('xkb', 'ch')]"

  # config.vm.provision "shell", :privileged => true, :path => "scripts/install-ansible.sh"
  # config.vm.provision "shell", :privileged => true, :path => "scripts/start-ansible.sh"

  config.vm.provision :ansible_local do |ansible|
    #ansible.install = true
    ansible.install = false
    ansible.version = "latest"
    #ansible.inventory_path = "provisioning/inventory.yml"
    ansible.playbook = "provisioning/playbook.yml"
  end

  #config.vm.provision "shell", inline: "sudo reboot now"
end
