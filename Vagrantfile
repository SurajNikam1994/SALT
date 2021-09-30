Vagrant.configure("2") do |config|
  config.vm.define "saltmaster" do |master|
    master.vm.box = "centos/7"
    master.vm.hostname = "labsaltmaster" 
    master.vm.network "private_network", ip: "10.1.1.100"
    master.vm.provision "shell", path: "bootstrap.sh"
  end
  config.vm.define "web" do |w|
    w.vm.box = "centos/7"
    w.vm.hostname = "web" 
    w.vm.network "private_network", ip: "10.1.1.2"
    w.vm.provision "shell", path: "bootstrap-web.sh"
  end
  config.vm.define "db" do |d|
    d.vm.box = "centos/7"
    d.vm.hostname = "db" 
    d.vm.network "private_network", ip: "10.1.1.3"
    d.vm.provision "shell", path: "bootstrap-db.sh"
  end
  # config.vm.define "jump" do |j|
  #   j.vm.box = "centos/7"
  #   j.vm.hostname = "jump" 
  #   j.vm.network "private_network", ip: "10.1.1.4"
  #   #j.vm.provision "shell", path: "bootstrap-db.sh"
  # end
  # config.vm.define "app001" do |app001|
  #   app001.vm.box = "generic/alpine38"
  #   app001.vm.hostname = "app001"
  #   app001.vm.network "private_network", ip: "10.1.1.5"
  #   app001.vm.provision "shell", path: "bootstrap-web.sh"
  # end
  # config.vm.define "app002" do |app002|
  #   app002.vm.box = "generic/alpine38"
  #   app002.vm.hostname = "app002"
  #   app002.vm.network "private_network", ip: "10.1.1.6"
  #   app002.vm.provision "shell", path: "bootstrap-web.sh"
  # end
  # config.vm.define "app003" do |app003|
  #   app003.vm.box = "generic/alpine38"
  #   app003.vm.hostname = "app003"
  #   app003.vm.network "private_network", ip: "10.1.1.7"
  #   app003.vm.provision "shell", path: "bootstrap-web.sh"
  # end
  # config.vm.define "app004" do |app004|
  #   app004.vm.box = "generic/alpine38"
  #   app004.vm.hostname = "app004"
  #   app004.vm.network "private_network", ip: "10.1.1.8"
  #   app004.vm.provision "shell", path: "bootstrap-web.sh"
  # end

end
