dep 'Google Chrome.app' do
  source 'http://dl.google.com/chrome/mac/dev/GoogleChrome.dmg'
end

dep 'Dropbox.app' do
  source 'http://cdn.dropbox.com/Dropbox%201.1.35.dmg'
end

dep 'Keka.app' do
  source 'http://download.kekaosx.com/'
end

dep 'Arq.app' do
  source 'http://www.haystacksoftware.com/arq/Arq.zip'
end

dep "apps" do
  requires "Google Chrome.app"
end
