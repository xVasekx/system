# -*- mode: ruby -*-
# vim: set ft=ruby :
MACHINES = {
  :system => {
        :box_name => "generic/centos8",
        :ip_addr => "192.168.56.100",      
  },
}


Vagrant.configure("2") do |config|


  MACHINES.each do |boxname, boxconfig|

      config.vm.synced_folder ".", "/vagrant", disabled: false
      config.vm.define boxname do |box|
        box.vm.box = boxconfig[:box_name]
        box.vm.box_version = boxconfig[:box_version]
        box.vm.host_name = boxname.to_s
        box.vm.network "private_network", ip: boxconfig[:ip_addr]
        box.vm.provider :virtualbox do |vb|
              vb.customize ["modifyvm", :id, "--memory", "1024"]
        end
        box.vm.provision "shell", path: "log.sh"
        box.vm.provision "shell", path: "unit.sh"
        box.vm.provision "shell", path: "httpd.sh"
    end
  end
end
