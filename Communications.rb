dep 'HipChat.app' do
  source "https://channeliq.hipchat.com/downloads/latest/mac"
end

dep "Adium.app" do
  source "http://downloads.sourceforge.net/project/adium/Adium_1.5.10.dmg?r=&ts=1405734350&use_mirror=hivelocity"
end

dep "comm" do
  requires "HipChat.app",
           "Adium.app"
end
