dep 'Google Chrome Canary.app' do source 'https://storage.googleapis.com/chrome-canary/GoogleChromeCanary.dmg'
end
dep 'Google Chrome Dev.app' do source 'http://dl.google.com/chrome/mac/dev/GoogleChrome.dmg'
end
dep 'Google Chrome Beta.app' do source 'http://dl.google.com/chrome/mac/beta/GoogleChrome.dmg'
end
dep 'Google Chrome.app' do source 'http://dl.google.com/chrome/mac/stable/GoogleChrome.dmg'
end

dep 'apps' do
  requires 'Google Chrome.app',
end
