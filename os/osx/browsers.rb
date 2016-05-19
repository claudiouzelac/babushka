dep 'Firefox.app' do
  source 'https://download-installer.cdn.mozilla.net/pub/firefox/releases/46.0.1/mac/en-US/Firefox%2046.0.1.dmg'
end

dep 'browsers-osx' do
  requires 'Firefox.app'
end