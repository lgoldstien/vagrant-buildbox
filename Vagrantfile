# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "buildbox" do |buildbox|
    # The box name and url
    buildbox.vm.box = "precise64"
    buildbox.vm.box_url = "http://files.vagrantup.com/precise64.box"

    # Share the src and build dirs with the guest machine
    buildbox.vm.synced_folder "src", "/home/vagrant/src"
    buildbox.vm.synced_folder "bin", "/home/vagrant/bin"

    # Give the machine some extra umph
    buildbox.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "2048"]
      vb.customize ["modifyvm", :id, "--cpus", 4]
    end

    # Run the bootstrap script to get required software installed
    buildbox.vm.provision :shell, :path => "bootstrap.sh", :args => ""
  end
end
