dep('disable-itunes-store-arrows') {
  shell('defaults write com.apple.iTunes show-store-link-arrows -bool false')
}

dep('disable-genius-sidebar') {
  shell('defaults write com.apple.iTunes disableGeniusSidebar -bool true')
}

dep('disable-music-store') {
  shell('defaults write com.apple.iTunes disableMusicStore -bool true')
}

dep('disable-radio-stations') {
  shell('defaults write com.apple.iTunes disableRadio -bool true')
}

dep('disable-artist-connect') {
  shell('defaults write com.apple.iTunes disableArtistConnect -bool true')
}

dep('dont-automatically-sync-ipods') {
  shell('defaults write com.apple.iTunes dontAutomaticallySyncIPods -bool true')
}

dep('disable-itunes-u') {
  shell('defaults write com.apple.iTunes allowiTunesUAccess -bool false')
}

dep('disable-podcasts') {
  shell('defaults write com.apple.iTunes disablePodcasts -bool true')
}

dep('disable-shared-music') {
  shell('defaults write com.apple.iTunes disableSharedMusic -bool true')
}

dep('restrict-movies') {
  shell('defaults write com.apple.iTunes restrictMovies -bool true')
}

dep('restrict-explicit-books') {
  shell('defaults write com.apple.iTunes restrictExplicitBooks -bool true')
}

dep('restrict-explicit') {
  shell('defaults write com.apple.iTunes restrictExplicit -bool true')
}

dep('itunes') {
  requires %w(
    disable-itunes-store-arrows
    disable-genius-sidebar
    disable-radio-stations
    disable-artist-connect
    dont-automatically-sync-ipods
    disable-itunes-u
    disable-podcasts
    disable-shared-music
    disable-music-store
    restrict-movies
    restrict-explicit-books
    restrict-explicit
  )
}