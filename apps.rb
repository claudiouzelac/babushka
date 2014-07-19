dep 'Google Chrome.app' do
  source 'http://dl.google.com/chrome/mac/dev/GoogleChrome.dmg'
end

dep 'Dropbox.app' do
  source 'http://cdn.dropbox.com/Dropbox%201.1.35.dmg'
end

dep "Google Drive.app" do
  source "https://dl-ssl.google.com/drive/installgoogledrive.dmg"
end

dep "apps" do
  requires "Google Chrome.app",
           "Dropbox.app",
           "Google Drive.app"
end
