dep 'docker.managed' do
  installs 'docker'
end

dep 'boot2docker.managed' do
  installs 'boot2docker'
end

dep 'VirtualBox.installer' do
  source 'http://dlc.sun.com.edgesuite.net/virtualbox/4.2.6/VirtualBox-4.2.6-82870-OSX.dmg'
  met? { '/Applications/VirtualBox.app'.p.exists? }
end

dep 'ansible.managed' do
  installs 'ansible'
end

dep 'devops' do
  requires 'docker.managed',
           'boot2docker.managed',
           'VirtualBox.installer',
           'ansible.managed'
end
