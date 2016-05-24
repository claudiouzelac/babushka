dep 'auto-hide-dock' do
  shell('defaults write com.apple.dock orientation -string bottom')
  shell('defaults write com.apple.dock autohide -boolean true')
end

dep 'fast-auto-hide' do
  shell('defaults write com.apple.dock autohide-time-modifier -float 0.1')
end

dep 'enable-list-view' do
  shell('defaults write com.apple.dock use-new-list-stack -bool YES')
end

dep 'configure_dock' do
  requires %w(
              auto-hide-dock
              fast-auto-hide
              enable-list-view
              )
end