# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.box_url = "https://vagrantcloud.com/ubuntu/boxes/trusty64"
  config.vm.network :private_network, ip: "192.168.14.24"
  config.vm.provision :shell, :path => "install.sh"
  config.vm.synced_folder ".", "/var/www", owner: "www-data", group: "www-data"
end
