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

dep 'security-osx' do
  requires 'pass.managed',
           'DNSCrypt Menubar.app',
           'Sync.app'
           # 'VeraCrypt.app'
end
