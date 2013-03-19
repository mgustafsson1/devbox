# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|

 config.vm.customize [
    "modifyvm", :id,
    "--memory", "512"
  ]
  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"


  # Assign this VM to a host-only network IP, allowing you to access it
  # via the IP. Host-only networks can talk to the host machine as well as
  # any other machines on the same network, but cannot be accessed (through this
  # network interface) by any external networks.
  config.vm.network :hostonly, "192.168.3.3"

  # Share an additional folder to the guest VM. The first argument is
  # an identifier, the second is the path on the guest to mount the
  # folder, and the third is the path on the host to the actual folder.
  #config.vm.share_folder "v-code", "/commoncode", "code"
  config.vm.provision :puppet do |puppet|
     puppet.manifests_path = "manifests"
     puppet.manifest_file  = "base.pp"
     puppet.module_path = "modules"
  end
end
