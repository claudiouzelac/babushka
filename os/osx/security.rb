dep 'pass.managed' do
  installs 'pass'
end

dep 'keybase.managed' do
  install 'keybase'
end

# dep 'VeraCrypt.app' do
#   source 'http://downloads.sourceforge.net/project/veracrypt/VeraCrypt%201.17/VeraCrypt_1.17.dmg?r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fveracrypt%2F&ts=1463685515&use_mirror=heanet'
# end

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

dep 'security-osx' do
  requires 'pass.managed',
           'DNSCrypt Menubar.app',
           'Sync.app',
           'hosts',
           'CyberGhost.app'
           # 'VeraCrypt.app'
end
