dep "Google Chrome Canary.app"  do source "https://storage.googleapis.com/chrome-canary/GoogleChromeCanary.dmg" end
dep "Google Chrome Dev.app"     do source "http://dl.google.com/chrome/mac/dev/GoogleChrome.dmg" end
dep "Google Chrome Beta.app"    do source "http://dl.google.com/chrome/mac/beta/GoogleChrome.dmg" end
dep "Google Chrome.app"         do source "http://dl.google.com/chrome/mac/stable/GoogleChrome.dmg" end
dep "HTTP Client.app"           do source "http://ditchnet.org/httpclient/dist/HTTPClient.zip" end
dep 'Dropbox.app'               do source 'http://cdn.dropbox.com/Dropbox%201.1.35.dmg' end
dep "Google Drive.app"          do source "https://dl-ssl.google.com/drive/installgoogledrive.dmg" end
dep "Skype.app"                 do source "http://www.skype.com/go/getskype-macosx.dmg" end  

dep "apps" do
  requires "Google Chrome.app",
           "Dropbox.app",
           "Google Drive.app"
end
