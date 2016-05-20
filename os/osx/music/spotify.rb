dep 'Spotify.app' do
  source 'http://download.spotify.com/Spotify.dmg'
end

dep 'spotify-osx' do
  requires 'Spotify.app'
end