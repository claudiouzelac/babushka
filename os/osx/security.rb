def home
  ENV['HOME']
end

dep 'pass.managed' do
  installs 'pass'
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

dep 'keybase.managed' do
  installs 'keybase'
end

dep 'tor.managed' do
  installs 'tor'
end

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


dep 'security-osx' do
  requires 'pass.managed',
           'keybase.managed',
           'tor.managed',
           'tor_configuration',
           'GPG.installer',
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
           'disable-captive-portals'
end
