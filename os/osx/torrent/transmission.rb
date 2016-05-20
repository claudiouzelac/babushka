dep 'Transmission.app' do
  source 'http://download.transmissionbt.com/files/Transmission-2.92.dmg'
end

dep 'transmission-osx' do
  requires 'Transmission.app'
end