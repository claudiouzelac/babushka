dep 'Adium.app' do
  source 'http://downloads.sourceforge.net/project/adium/Adium_1.5.10.dmg?r=&ts=1405734350&use_mirror=hivelocity'
end

dep 'adium-osx' do
  requires 'Adium.app'
end