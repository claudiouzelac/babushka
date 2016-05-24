dep('disable-itunes-store-arrows') {
  shell('defaults write com.apple.iTunes show-store-link-arrows -bool false')
}

dep('disable-genius-sidebar') {
  shell('defaults write com.apple.iTunes disableGeniusSidebar -bool true')
}

dep('disable-radio-stations') {
  shell('defaults write com.apple.iTunes disableRadio -bool true')
}

dep('itunes') {
  requires %w(disable-itunes-store-arrows disable-genius-sidebar disable-radio-stations)
}