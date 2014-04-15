dep 'iTerm.app' do
	source 'http://www.iterm2.com/downloads/stable/iTerm2_v1_0_0.zip'
end

dep 'Alfred.app' do
	source 'http://cachefly.alfredapp.com/Alfred_2.2_243b.zip'
end

dep 'Jumpcut.app' do
	source 'http://downloads.sourceforge.net/jumpcut/Jumpcut_0.63.tgz'
end

dep 'HipChat.app' do
	source 'https://channeliq.hipchat.com/downloads/latest/mac'
end

dep 'Google Chrome.app' do
	source 'https://dl-ssl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg'
end

dep 'all-osx-apps' do
	requires 'iTerm.app'
	requires 'Alfred.app'
	requires 'Jumpcut.app'
	requires 'HipChat.app'
	requires 'Google Chrome.app'
end

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

dep 'all-osx-settings' do
	requires 'show-all-files-in-folder'
	requires 'auto-hide-dock'
	requires 'show-only-active-apps'
	requires 'show-hard-drives-on-desktop'
end

