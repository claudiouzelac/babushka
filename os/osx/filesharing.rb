dep 'Sync.app' do
  source 'https://www.sync.com/download/apple/Sync.dmg'
end

dep 'Transmission.app' do
  source 'http://download.transmissionbt.com/files/Transmission-2.92.dmg'
end

dep 'filesharing-osx' do
  requires 'Transmission.app',
           'Sync.app'
end