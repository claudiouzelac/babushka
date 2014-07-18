dep 'Google Chrome.app' do
  source 'http://dl.google.com/chrome/mac/dev/GoogleChrome.dmg'
end

dep 'XQuartz.installer' do
  source 'http://xquartz.macosforge.org/downloads/SL/XQuartz-2.5.3.dmg'
  met? { '/Applications/Utilities/XQuartz.app'.p.exists?  }
end

dep 'Dropbox.app' do
  source 'http://cdn.dropbox.com/Dropbox%201.1.35.dmg'
end

dep 'VirtualBox.installer' do
  source 'http://download.virtualbox.org/virtualbox/4.0.0/VirtualBox-4.0.0-69151-OSX.dmg'
  met? { '/Applications/VirtualBox.app'.p.exists? }
end

dep 'OmniGraffle.app' do
  source 'http://www.omnigroup.com/ftp1/pub/software/MacOSX/10.5/OmniGraffle-5.2.3-English.dmg'
end

dep 'Keka.app' do
  source 'http://download.kekaosx.com/'
end

dep 'Arq.app' do
  source 'http://www.haystacksoftware.com/arq/Arq.zip'
end

dep 'HipChat.app' do
  source 'https://channeliq.hipchat.com/downloads/latest/mac'
end
