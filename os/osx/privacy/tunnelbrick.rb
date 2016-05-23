dep 'Tunnelblick.app' do
  source 'https://tunnelblick.net/release/Tunnelblick_3.6.3_build_4560.dmg'
end

dep 'tunnelblick-osx' do
  requires 'Tunnelblick.app'
end