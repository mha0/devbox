Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"

  config.vbguest.auto_update = false # TODO update

  config.vm.provider "virtualbox" do |v|
    v.gui = true
    v.memory = 2096 # TODO update
    v.cpus = 2 # TODO update
    v.name = "mat-devbox"
    v.customize ["modifyvm", :id, "--vram", "128"]
    v.customize ["modifyvm", :id, "--graphicscontroller", "vmsvga"]
    v.customize ["modifyvm", :id, "--accelerate3d", "on"]
    v.customize ["modifyvm", :id, "--clipboard-mode", "bidirectional"]
    v.customize ["modifyvm", :id, "--draganddrop", "bidirectional"]
  end

  # install ansible
  # config.vm.provision "shell", inline: "sudo apt-get install -y aptitude"
  # config.vm.provision "shell", inline: "sudo apt-get update"
  # config.vm.provision :ansible_local do |ansible|
  #   ansible.install = true
  #   ansible.version = "latest"
  #   ansible.playbook = "provisioning/hello-world-playbook.yml"
  #   ansible.extra_vars = { ansible_python_interpreter:"/usr/bin/python3" }
  # end

  # configure keyboard
  config.vm.provision "shell", inline: "sudo loadkeys ch"
  # config.vm.provision "shell", inline: "sudo localectl set-keymap ch"

  # install gnome
  # config.vm.provision "shell", inline: "sudo apt-get update"
  # config.vm.provision "shell", inline: "sudo apt-get -y install ubuntu-gnome-desktop"
  # config.vm.provision "shell", inline: "gsettings set org.gnome.desktop.input-surces [('xkb', 'ch')]"

  # remove unused packages
  # config.vm.provision :ansible_local do |ansible|
  #   ansible.playbook = "provisioning/strip-ubuntu-playbook.yml"
  #   ansible.extra_vars = { ansible_python_interpreter:"/usr/bin/python3" }
  # end

  # remove unused packages
  # config.vm.provision :ansible_local do |ansible|
  #   ansible.playbook = "provisioning/strip-ubuntu-playbook.yml"
  #   ansible.extra_vars = { ansible_python_interpreter:"/usr/bin/python3" }
  # end

  # remove unused packages
  config.vm.provision :ansible_local do |ansible|
    ansible.playbook = "provisioning/install-all-playbook.yml"
    ansible.extra_vars = { ansible_python_interpreter:"/usr/bin/python3" }
  end

  # upgrade packages
  # config.vm.provision "shell", inline: "sudo apt-get -y upgrade"


  # cleanup
  # config.vm.provision "shell", inline: "sudo apt-get autoclean && sudo apt-get autoremove"

  #config.vm.provision "shell", inline: "sudo reboot now"
end
