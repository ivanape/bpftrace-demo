# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/noble64"
  config.vm.provision :shell, :privileged => false, :path => "scripts/setup.sh"
  config.vm.synced_folder "./code", "/code"
end