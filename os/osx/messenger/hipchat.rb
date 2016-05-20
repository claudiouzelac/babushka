dep 'HipChat.app' do
   source 'https://s3.amazonaws.com/downloads.hipchat.com/osx/HipChat-4.0.10-643.zip'
end

dep 'hipchat-osx' do
  requires 'HipChat.app'
end