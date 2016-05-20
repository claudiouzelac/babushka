dep 'Ricochet.app' do
  source 'https://ricochet.im/releases/1.1.2/Ricochet-1.1.2.dmg'
end

dep 'ricochet-osx' do
  requires 'Ricochet.app'
end