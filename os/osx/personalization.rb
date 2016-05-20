dep 'disable-warn-on-trash-empty' do
	shell('defaults write com.apple.finder WarnOnEmptyTrash -bool false')
end

dep 'show-all-files-in-folder' do
	shell('defaults write com.apple.Finder AppleShowAllFiles YES')
end

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

dep 'show-hard-drives-on-desktop' do
	shell('defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true')
end

dep 'allow-quit-in-finder' do
	shell('defaults write com.apple.finder QuitMenuItem -bool false')
end

dep 'limit-search-scope-to-finder-location' do
	shell('defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"')
end

dep 'show-folder-path-in-finder' do
	shell('defaults write com.apple.finder ShowPathbar -bool true')
	shell('defaults write com.apple.finder _FXShowPosixPathInTitle -bool true')
end

dep 'open-finder-on-new-mounts' do
	shell('defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true')
	shell('defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true')
	shell('defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true')
end

dep 'disable-warns-on-file-extension-changes' do
	shell('defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false')
end

dep 'show-mounts-on-desktop' do
	shell('defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true')
	shell(' defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true')
	shell('defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true')
	shell('defaults write com.apple.finder ShowMountedServersOnDesktop -bool true')
end

dep 'system-osx' do
	requires 'disable-warn-on-trash-empty',
	 				 'show-all-files-in-folder',
	 				 'auto-hide-dock',
	 				 'fast-auto-hide',
					 'enable-list-view',
					 'show-hard-drives-on-desktop',
					 'allow-quit-in-finder',
					 'limit-search-scope-to-finder-location',
					 'show-folder-path-in-finder',
					 'open-finder-on-new-mounts',
					 'disable-warns-on-file-extension-changes'
end
