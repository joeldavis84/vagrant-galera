
Vagrant.configure('2') do |config|

  config.vm.box = 'yk0/ubuntu-xenial'

    ## Suppress spurious warnings related to the tty
  config.vm.provision "fix-no-tty", type: "shell" do |s|
    s.privileged = false
    s.inline = "sudo sed -i '/tty/!s/mesg n/tty -s \\&\\& mesg n/' /root/.profile"
  end

  config.vm.define 'db01' do |db|
    db.vm.hostname = 'db01'
    db.vm.provision :shell, path: 'provision-database'
    db.vm.network "private_network", ip: '192.168.121.41'
  end

  config.vm.define 'db02' do |db|
    db.vm.hostname = 'db02'
    db.vm.provision :shell, path: 'provision-database'
    db.vm.network "private_network", ip: '192.168.121.42'
  end

  config.vm.define 'db03' do |db|
    db.vm.hostname = 'db03'
    db.vm.provision :shell, path: 'provision-database'
    db.vm.network "private_network", ip: '192.168.121.43'
  end

  config.vm.define 'lb01' do |db|
    db.vm.hostname = 'lb01'
    db.vm.network "private_network", ip: '192.168.121.51'
  end

  config.vm.define 'lb02' do |db|
    db.vm.hostname = 'lb02'
    db.vm.network "private_network", ip: '192.168.121.52'
  end

end

# vim: ft=ruby
