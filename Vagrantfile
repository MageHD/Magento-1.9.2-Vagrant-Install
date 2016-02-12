# -*- mode: ruby -*-
# vi: set ft=ruby :
v1 = ARGV[0]

Vagrant.configure("2") do |config|
#config.vm.provider "scotch/box" do |v|
#  v.name = domain
#end
	config.vm.hostname = "local.testing.com"
    config.vm.box = "scotch/box"
    config.vm.provision :shell, :path => "bootstrap.sh"
    config.vm.provision :shell, :path => "toolsprovision.sh", privileged:false
    config.vm.network "private_network", ip: "192.168.33.11"
    
    config.vm.synced_folder ".", "/var/www", :mount_options => ["dmode=777", "fmode=666"]
    
    # Optional NFS. Make sure to remove other synced_folder line too
    #config.vm.synced_folder ".", "/var/www", :nfs => { :mount_options => ["dmode=777","fmode=666"] }
    # Forward Mysql Ports
    config.vm.network "forwarded_port", guest: 3306, host: 3306

end
