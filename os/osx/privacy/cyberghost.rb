dep 'CyberGhost.app' do
  source 'http://download.cyberghostvpn.com/mac/cg5mac_5.0.14.12.dmg'
end

dep 'cyberghost-osx' do
  requires 'CyberGhost.app'
end