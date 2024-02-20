# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/noble64"
  config.vm.provision :shell, :privileged => false, :path => "scripts/setup.sh"
  config.vm.synced_folder "./code", "/code"
  config.vm.network "forwarded_port", guest: 8999, host: 8999
  config.vm.network "forwarded_port", guest: 8080, host: 8080
end