dep "IntelliJ.app" do
  source "http://download-cf.jetbrains.com/idea/ideaIC-13.1.4.dmg"
end

dep "PyCharm.app" do
  source "http://download-cf.jetbrains.com/python/pycharm-community-3.4.1.dmg"
end

dep "jetbrains-paid" do
  requires "IntelliJ.app",
           "PyCharm.app"
end
