dep('auto-hide-dock') {
  shell('defaults write com.apple.dock orientation -string bottom')
  shell('defaults write com.apple.dock autohide -boolean true')
}

dep('fast-auto-hide') {
  shell('defaults write com.apple.dock autohide-time-modifier -float 0.1')
}

dep('enable-list-view') {
  shell('defaults write com.apple.dock use-new-list-stack -bool YES')
}

dep('speed-up-mission-control') {
  shell('defaults write com.apple.dock expose-animation-duration -float 0.1')
}

dep('make-hidden-dock-apps-translucent') {
  shell('defaults write com.apple.dock showhidden -bool true')
}

dep('configure_dock') {
  requires %w(
              auto-hide-dock
              fast-auto-hide
              enable-list-view
              speed-up-mission-control
              make-hidden-dock-apps-translucent
              )
}