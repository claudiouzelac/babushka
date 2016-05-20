dep 'Sync.app' do
  source 'https://www.sync.com/download/apple/Sync.dmg'
end

dep 'sync-osx' do
  requires 'Sync.app'
end