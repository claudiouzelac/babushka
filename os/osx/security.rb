dep 'openssl.managed' do
  installs 'openssl'
end

dep 'GPG.installer' do
  met? {
    '/Applications/GPG Keychain.app'.p.exists?
  }
  source 'https://releases.gpgtools.org/GPG_Suite-2015.09.dmg'
end

dep 'gpg_directory' do
  def gnu_directory
    '~/.gnupg/'
  end
  met? {
    gnu_directory.p.exists?
  }
  meet {
    shell("mkdir -p #{gnu_directory}")
    shell("sudo chmod -R `whoami` #{gnu_directory}")
  }
end

dep 'ssh_directory' do
  def ssh_dir
    '~/.ssh'
  end

  met? {
    ssh_dir.p.exists?
  }
  meet {
    shell("mkdir -p #{ssh_dir}")
    shell("sudo chmod -R `whoami` #{ssh_dir}")
  }
end

dep 'ssh_configuration' do
  requires 'ssh_directory'

  def config_file
    '~/.ssh/ssh_config'
  end

  met? {
    Babushka::Renderable.new(config_file).from?('~/.babushka/deps/configs/ssh_config.erb')
  }
  meet {
    render_erb '../../configs/ssh_config.erb', :to => config_file
  }

end

dep 'gpg_configuration' do
  requires 'GPG.installer',
           'gpg_directory'
  def config_file
    '~/.gnupg/gpg.conf'
  end

  met? {
    Babushka::Renderable.new(config_file).from?('~/.babushka/deps/configs/gpg.conf.erb')
  }
  meet {
    render_erb '../../configs/gpg.conf.erb', :to => config_file
  }
end

dep 'DNSCrypt Menubar.app' do
  source 'https://github.com/alterstep/dnscrypt-osxclient/releases/download/1.0.10/dnscrypt-osxclient-1.0.10.dmg'
end

dep 'enable-firewall' do
  shell('sudo defaults write /Library/Preferences/com.apple.alf globalstate -bool true')
end

dep 'enable-logging' do
  shell('sudo defaults write /Library/Preferences/com.apple.alf loggingenabled -bool true')
end

dep 'stealth-mode' do
  shell('sudo defaults write /Library/Preferences/com.apple.alf stealthenabled -bool true')
end

dep 'disable-automatic-connections-to-signed-software' do
  shell('sudo defaults write /Library/Preferences/com.apple.alf allowsignedenabled -bool false')
end

dep 'disable-captive-portals' do
  shell('sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.captive.control Active -bool false')
end

dep 'lock-on-screensaver' do
  shell('defaults write com.apple.screensaver askForPassword -int 1')
  shell('defaults write com.apple.screensaver askForPasswordDelay -int 0')
end

dep 'show-hidden-files' do
  shell('defaults write com.apple.finder AppleShowAllFiles -bool true')
  shell('chflags nohidden ~/Library')
end

dep 'disable-default-icloud-saving' do
  shell('defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false')
end

dep 'disable-crash-reporter' do
  shell('defaults write com.apple.CrashReporter DialogType none')
end

dep 'disable-bonjour-announcements' do
  shell('sudo defaults write /Library/Preferences/com.apple.mDNSResponder.plist NoMulticastAdvertisements -bool YES')
end


dep 'security-osx' do
  requires 'keybase.managed',
           'openssl.managed',
           'ssh_configuration',
           'GPG.installer',
           'gpg_configuration',
           'DNSCrypt Menubar.app',
           'hosts',
           'VeraCrypt.installer',
           'enable-firewall',
           'enable-logging',
           'stealth-mode',
           'disable-automatic-connections-to-signed-software',
           'disable-captive-portals',
           'lock-on-screensaver',
           'show-hidden-files',
           'disable-default-icloud-saving',
           'disable-crash-reporter',
           'disable-bonjour-announcements'
end
