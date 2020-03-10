Vagrant.require_version ">= 1.7.0"

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/bionic64"    # Display the VirtualBox GUI when booting the machine

  # config.vm.box_url = "ubuntu/bionic64"
  # config.vm.box_download_insecure = true
  # config.vm.box_download_location_trusted = true

  # config.vm.network "forwarded_port", guest: 7002, host: 7002
  # config.vm.network "forwarded_port", guest: 9443, host: 9443

  config.vm.synced_folder "..", "/vagrant-share"

  config.vm.provider "virtualbox" do |v|
    v.memory = 8196
    v.cpus = 4
    v.name = "mat-devbox"
	v.customize ["modifyvm", :id, "--vram", "128"]
	v.customize ["modifyvm", :id, "--graphicscontroller", "vmsvga"]
	v.customize ["modifyvm", :id, "--accelerate3d", "on"]
  v.gui = true
  end

  class Password
    def to_s
      begin
        system 'stty -echo'
        print "Password: "
        pass = URI.escape(STDIN.gets.chomp)
      ensure
        system 'stty echo'
      end
      pass
    end
  end

  config.vm.provision :shell, :privileged => true, :path => "bootstrap/bootstrap.sh"
  # config.vm.provision :shell, env: {"USERNAME" => "mat", "PASSWORD" => Password.new, "ENV_PROJECT"=>"MeteoSwiss/environments/tamsi"}, :privileged => false, :path => "startAnsible.sh"
end
