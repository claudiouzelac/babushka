dep 'WhatsApp.app' do
  source 'https://web.whatsapp.com/desktop/mac/files/WhatsApp.zip'
end

dep 'whatsapp-osx' do
  requires 'WhatsApp.app'
end