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
    # TODO more props
  end

  config.vm.provision "shell", inline: "sudo apt-get update"
  config.vm.provision "shell", inline: "sudo apt-get -y upgrade"
  # config.vm.provision "shell", inline: "sudo apt-get -y install ubuntu-gnome-desktop"
  config.vm.provision "shell", inline: "sudo reboot now"
  # TODO loadkeys
  # TODO strip packages and clean
end
