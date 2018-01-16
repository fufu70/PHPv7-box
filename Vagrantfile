Vagrant.configure(2) do |config|

  config.vm.box = "v0rtex/xenial64"
  
  # Mentioning the SSH Username/Password:
  config.vm.boot_timeout = 100000000000
  config.vm.synced_folder "src/", "/var/www/phpv7_box/src", owner: "www-data", group: "www-data"
  config.vm.synced_folder "vagrant/", "/home/vagrant/install", owner: "vagrant", group: "vagrant"

  # Begin Configuring
  config.vm.define "phpv7_box" do|phpv7_box|
    phpv7_box.vm.hostname = "phpv7box.dev" # Setting up hostname
    phpv7_box.vm.network "private_network", ip: "192.168.202.137" # Setting up machine's IP Address
    phpv7_box.vm.provision :shell, path: "vagrant/install.sh" # Provisioning with script.sh
  end

  config.vm.provider :virtualbox do |vb|
    vb.gui = true
  end

  config.vm.post_up_message = "You can access the PHP v7 box at http://192.168.202.137"

  # End Configuring
end