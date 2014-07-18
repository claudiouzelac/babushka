dep 'HipChat.app' do
  source 'https://channeliq.hipchat.com/downloads/latest/mac'
end

dep "comm" do
  requires "HipChat.app"
end
