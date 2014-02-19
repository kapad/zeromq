require 'berkshelf/vagrant'

Vagrant::Config.run do |config|

  config.vm.host_name = "zeromq-berkshelf"

  config.vm.box = "ubuntu_12-04_precise_64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.network :hostonly, "33.33.33.10"

  config.vm.provision :chef_solo do |chef|
    chef.run_list = [
      "recipe[zeromq::default]",
      "recipe[zeromq::dev]"
    ]
  end
end
