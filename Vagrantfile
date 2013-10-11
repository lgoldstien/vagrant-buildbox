# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  # The box name and url
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  # Share the src and build dirs with the guest machine
  config.vm.synced_folder "./src", "/home/vagrant/src"
  config.vm.synced_folder "./build", "/home/vagrant/build"

  # Give the machine some extra umph
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "2048"]
    vb.customize ["modifyvm", :id, "--cpus", 4]
  end

  # Run the bootstrap script to get required software installed
  config.vm.provision :shell, :path => "bootstrap.sh", :args => ""
end
