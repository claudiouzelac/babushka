dep 'Adium.app' do
  source 'http://downloads.sourceforge.net/project/adium/Adium_1.5.10.dmg?r=&ts=1405734350&use_mirror=hivelocity'
end

dep 'Ricochet.app' do
  source 'https://ricochet.im/releases/1.1.2/Ricochet-1.1.2.dmg'
end

dep 'WhatsApp.app' do
  source 'https://web.whatsapp.com/desktop/mac/files/WhatsApp.zip'
end

dep 'communications' do
  requires 'Adium.app',
           'Ricochet.app',
           'WhatsApp.app'
end
