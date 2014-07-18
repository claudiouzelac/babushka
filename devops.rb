dep "docker" do
  met? {
    "/usr/local/Cellar/docker".p.exist?
  }
  meet {
    shell("brew install docker")
  }
end

dep "boot2docker" do
  met? {
    "/usr/local/Cellar/boot2docker".p.exist?
  }
  meet {
    shell("brew install boot2docker")
  }
end

# HACK to get around 403 error when downloading
dep 'vagrant' do
  met? {
    "/Applications/Vagrant".p.exist?
  }
  meet {
    shell("wget https://dl.bintray.com/mitchellh/vagrant/vagrant_1.6.3.dmg")
    shell("hdiutil mount vagrant_1.6.3.dmg")
    sudo('installer -package "/Volumes/Vagrant/Vagrant.pkg" -target "/Volumes/Macintosh HD"')
    shell('hdiutil unmount "/Volumes/Vagrant/"')
    shell("mv vagrant_1.6.3.dmg ../downloads/vagrant_1.6.3.dmg")
  }

end
