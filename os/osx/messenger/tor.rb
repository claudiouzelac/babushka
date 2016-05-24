dep 'TorMessenger.app' do
  source 'https://dist.torproject.org/tormessenger/0.1.0b6/TorMessenger-0.1.0b6-osx64_en-US.dmg'
end

dep 'tormessenger-osx' do
  requires 'TorMessenger.app'
end