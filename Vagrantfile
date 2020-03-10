Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"

  config.vm.provider "virtualbox" do |v|
    v.gui = true
    v.memory = 8196
    v.cpus = 4
    v.name = "mat-devbox"
    v.customize ["modifyvm", :id, "--vram", "128"]
    v.customize ["modifyvm", :id, "--graphicscontroller", "vmsvga"]
    v.customize ["modifyvm", :id, "--accelerate3d", "on"]
  end

  # In case you need an IP to access the VM from another software :
  # config.vm.network "private_network", ip: "192.168.56.101"

  config.vm.provision "shell", inline: "sudo sed -i 's/^# deb/deb/g' /etc/apt/sources.list"
  config.vm.provision "shell", inline: "sudo apt-get update && sudo apt-get upgrade -y"
  config.vm.provision "shell", inline: "sudo loadkeys de_CH-latin1"
  config.vm.provision "shell", inline: "sudo apt-get install -y gnome-session gdm3"
  config.vm.provision "shell", inline: "sudo sed -i 's/XKBLAYOUT=\"us\"/XKBLAYOUT=\"de_CH-latin1\"/g' /etc/default/keyboard"
  config.vm.provision "shell", inline: "sudo apt-get install -y virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11"
  config.vm.provision "shell", inline: "sudo shutdown -r now"
end
