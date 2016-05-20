dep 'Bitmessage.app' do
  source 'https://bitmessage.org/download/osx/Bitmessage.dmg'
end

dep 'bitmessage-osx' do
  requires 'Bitmessage.app'
end