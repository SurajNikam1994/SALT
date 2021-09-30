Vagrant.configure("2") do |config|
  config.vm.define "saltmaster" do |master|
    master.vm.box = "centos/7"
    master.vm.hostname = "labsaltmaster" 
    master.vm.network "private_network", ip: "10.2.1.200"
    master.vm.provision "shell", path: "bootstrap.sh"
  end
  config.vm.define "web" do |w|
    w.vm.box = "centos/7"
    w.vm.hostname = "web" 
    w.vm.network "private_network", ip: "10.2.1.2"
    w.vm.provision "shell", path: "bootstrap-web.sh"
  end
  config.vm.define "db" do |d|
    d.vm.box = "centos/7"
    d.vm.hostname = "db" 
    d.vm.network "private_network", ip: "10.2.1.3"
    d.vm.provision "shell", path: "bootstrap-db.sh"
  end
  
end
