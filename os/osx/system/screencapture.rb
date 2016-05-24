dep 'save_screenshots_to_desktop' do
  shell('defaults write com.apple.screencapture location -string "$HOME/Desktop"')
end

dep 'save_screenshots_as_png' do
  shell('defaults write com.apple.screencapture type -string "png"')
end

dep 'screenshot_osx' do
  requires %w(
              save_screenshots_to_desktop
              save_screenshots_as_png
              )
end