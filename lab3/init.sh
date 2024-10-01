clear

# Task 1
mkdir Vagrant
cd Vagrant
vagrant init

# Task 2
nano Vagrantfile

# Enter the code to create a new vm and install nginx
# # Nginx VM
#  config.vm.define "as" do |as|
#    as.vm.box = "ubuntu/bionic64"
#    as.vm.hostname = "as"
#    as.vm.network "forwarded_port", guest: 80, host: 8020
#    as.vm.provider "virtualbox" do |vb|
#      vb.gui = true
#      vb.memory = "1024"
#    end
#    as.vm.provision "shell", path: "nginx.sh"
#  end
 
vagrant validate
vagrant up
vagrant ssh
systemctl status nginx
