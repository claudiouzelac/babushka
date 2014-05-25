dep "chrome-ubuntu" do
    shell("wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -")
    shell("sudo sh -c 'echo ""deb http://dl.google.com/linux/chrome/deb/ stable main"" >> /etc/apt/sources.list.d/google-chrome.list'")
    shell("sudo apt-get install google-chrome-stable")
end

dep "apps-ubuntu" do
    requires "chrome-ubuntu"
end
