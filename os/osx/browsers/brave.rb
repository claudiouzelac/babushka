dep 'Brave.app' do
  source 'https://brave-download.global.ssl.fastly.net/multi-channel/releases/dev/0.9.6/osx/Brave.dmg'
end

dep 'brave-osx' do
  requires 'Brave.app'
end