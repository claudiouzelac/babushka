def home
  ENV['HOME']
end

dep 'pass.managed' do
  installs 'pass'
end

dep 'openssl.managed' do
  installs 'openssl'
end

# dep 'privoxy.managed' do
#   installs 'privoxy'
#   shell('ln -sfv /usr/local/opt/privoxy/*.plist ~/Library/LaunchAgents')
#   shell('launchctl load ~/Library/LaunchAgents/homebrew.mxcl.privoxy.plist')
# end

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

dep 'keybase.managed' do
  installs 'keybase'
end

dep 'tor.managed' do
  installs 'tor'
end

# dep 'i2p.managed' do
#   installs 'i2p'
# end

dep 'tor_configuration' do
  requires 'tor.managed'
  def config_file
    '~/.tor/torrc'
  end
  met? {
    Babushka::Renderable.new(config_file).from?('~/.babushka/deps/configs/torrc.erb')
  }
  meet {
    render_erb '../../configs/torrc.erb', :to => config_file
  }
end

dep 'VeraCrypt.installer' do
  met? {
    '/Applications/VeraCrypt.app'.p.exists?
  }
  source 'http://downloads.sourceforge.net/project/veracrypt/VeraCrypt%201.17/VeraCrypt_1.17.dmg'
end

dep 'DNSCrypt Menubar.app' do
  source 'https://github.com/alterstep/dnscrypt-osxclient/releases/download/1.0.10/dnscrypt-osxclient-1.0.10.dmg'
end

dep 'CyberGhost.app' do
  source 'http://download.cyberghostvpn.com/mac/cg5mac_5.0.14.12.dmg'
end

def home
  ENV['HOME']
end

def hosts_repo
  File.join(home, 'code', 'hosts')
end

dep 'hosts' do
  met? {
    Babushka::GitRepo.new(hosts_repo).exists?
  }
  meet {
    Babushka::GitRepo.new(hosts_repo).clone! 'https://github.com/StevenBlack/hosts.git'
    shell "python #{hosts_repo}/updateHostsFile.py --auto"
  }
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
  requires 'pass.managed',
           'keybase.managed',
           'openssl.managed',
           'tor.managed',
           'ssh_configuration',
           # 'i2p.managed',
           'tor_configuration',
           'GPG.installer',
           'gpg_configuration',
           # 'privoxy.managed',
           'DNSCrypt Menubar.app',
           'Sync.app',
           'hosts',
           'CyberGhost.app',
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
