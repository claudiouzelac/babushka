dep 'configure_repeat_rate' do
  shell('defaults write NSGlobalDomain InitialKeyRepeat -int 15')
  shell('defaults write NSGlobalDomain KeyRepeat -int 0')
end

dep 'disable_auto_correct' do
  shell('defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false')
end


dep 'configure_keyboard' do
  requires %w(
              configure_repeat_rate
              disable_auto_correct
              )
end