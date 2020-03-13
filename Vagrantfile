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
    # TODO more props
  end

  config.vm.provision "shell", inline: "sudo apt-get update"
  config.vm.provision "shell", inline: "sudo apt-get -y remove --purge libreoffice*"
  config.vm.provision "shell", inline: "sudo apt-get -y remove --purge thunderbird*"
  config.vm.provision "shell", inline: "sudo apt-get -y remove --purge shotwell*"
  config.vm.provision "shell", inline: "sudo apt-get -y remove --purge *rhythmbox*"
  config.vm.provision "shell", inline: "sudo apt-get -y remove --purge gnome-mines byobu"
  config.vm.provision "shell", inline: "sudo apt-get -y upgrade"
  config.vm.provision "shell", inline: "sudo apt-get -y install ubuntu-gnome-desktop"
  config.vm.provision "shell", inline: "sudo apt-get autoclean && sudo apt-get autoremove && sudo apt-get clean"
  config.vm.provision "shell", inline: "gsettings set org.gnome.desktop.input-surces [('xkb', 'ch')]"
  config.vm.provision "shell", inline: "sudo reboot now"
  # TODO strip packages and clean
end
https://www.virtualbox.org/ticket/19336
