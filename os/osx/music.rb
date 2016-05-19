dep 'Spotify.app' do
  source 'http://download.spotify.com/Spotify.dmg'
end

dep 'music-osx' do
  requires 'Spotify.app'
end