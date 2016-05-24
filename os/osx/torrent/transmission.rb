dep('Transmission.app')  {
  source 'http://download.transmissionbt.com/files/Transmission-2.92.dmg'
}

dep('hide-donate-message') {
  shell('write org.m0k.transmission WarningDonate')
}

dep('hide-legal-disclaimer') {
  shell('defaults write org.m0k.transmission WarningLegal -bool false')
}

dep('remove-confirmation-to-download') {
  shell('defaults write org.m0k.transmission DownloadAsk -bool false')
}

dep('trash-original-torrent-file') {
  shell('defaults write org.m0k.transmission DeleteOriginalTorrent -bool true')
}

dep('store-incomplete-downloads-in-documents') {
  shell('defaults write org.m0k.transmission UseIncompleteDownloadFolder -bool true')
  shell('defaults write org.m0k.transmission IncompleteDownloadFolder -string "~/Documents/Torrents"')
}


dep 'transmission-osx' do
  requires %w(Transmission.app hide-donate-message hide-legal-disclaimer remove-confirmation-to-download trash-original-torrent-file store-incomplete-downloads-in-documents)
end