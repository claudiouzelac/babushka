dep('save_screenshots_to_desktop') {
  shell('defaults write com.apple.screencapture location -string "$HOME/Desktop"')
}

dep('save_screenshots_as_png') {
  shell('defaults write com.apple.screencapture type -string "png"')
}

dep('disable-shadow-in-screenshots') {
  shell('defaults write com.apple.screencapture disable-shadow -bool true')
}

dep 'screenshot_osx' do
  requires %w(
              save_screenshots_to_desktop
              save_screenshots_as_png
              disable-shadow-in-screenshots
              )
end