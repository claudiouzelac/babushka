dep 'Sync.app' do
  source 'https://www.sync.com/download/apple/Sync.dmg'
end

dep 'filesharing-osx' do
  requires 'transmission-osx',
           'Sync.app'
end