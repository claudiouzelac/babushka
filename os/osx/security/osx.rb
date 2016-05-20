dep 'enable-firewall' do
  shell('sudo defaults write /Library/Preferences/com.apple.alf globalstate -bool true')
end

dep 'enable-logging' do
  shell('sudo defaults write /Library/Preferences/com.apple.alf loggingenabled -bool true')
end

dep 'stealth-mode' do
  shell('sudo defaults write /Library/Preferences/com.apple.alf stealthenabled -bool true')
end

dep 'disable-automatic-connections-to-signed-software' do
  shell('sudo defaults write /Library/Preferences/com.apple.alf allowsignedenabled -bool false')
end

dep 'disable-captive-portals' do
  shell('sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.captive.control Active -bool false')
end

dep 'lock-on-screensaver' do
  shell('defaults write com.apple.screensaver askForPassword -int 1')
  shell('defaults write com.apple.screensaver askForPasswordDelay -int 0')
end

dep 'show-hidden-files' do
  shell('defaults write com.apple.finder AppleShowAllFiles -bool true')
  shell('chflags nohidden ~/Library')
end

dep 'disable-default-icloud-saving' do
  shell('defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false')
end

dep 'disable-crash-reporter' do
  shell('defaults write com.apple.CrashReporter DialogType none')
end

dep 'disable-bonjour-announcements' do
  shell('sudo defaults write /Library/Preferences/com.apple.mDNSResponder.plist NoMulticastAdvertisements -bool YES')
end

dep 'harden-osx' do
  requires 'enable-firewall',
           'enable-logging',
           'stealth-mode',
           'disable-automatic-connections-to-signed-software',
           'disable-captive-portals',
           'lock-on-screensaver',
           'show-hidden-files',
           'disable-default-icloud-saving',
           'disable-crash-reporter',
           'disable-bonjour-announcements'
end