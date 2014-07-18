
dep 'show-all-files-in-folder' do
	met? {
		shell("defaults read com.apple.Finder AppleShowAllFiles") == "YES"
	}
	meet {
		shell("defaults write com.apple.Finder AppleShowAllFiles YES")
	}
end

dep 'auto-hide-dock' do
	met? {
		shell("defaults read com.apple.dock autohide") == "1"
	}
	meet {
		shell("defaults write com.apple.dock autohide -bool true")
		shell("killall -HUP Dock")
	}
end

dep 'show-only-active-apps' do
	met? {
		shell("defaults read com.apple.dock static-only") == "1"
	}
	meet {
		shell("defaults write com.apple.dock static-only -bool TRUE")
		shell("killall -HUP Dock")
	}
end

dep 'show-hard-drives-on-desktop' do
	met? {
		shell("defaults read com.apple.finder ShowHardDrivesOnDesktop") == "1"
	}
	meet {
		shell("defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true")
	}
end

dep 'osx' do
	requires 'show-all-files-in-folder'
	requires 'auto-hide-dock'
	requires 'show-only-active-apps'
	requires 'show-hard-drives-on-desktop'
end
