dep "Clion.app" do
  source "http://download.jetbrains.com/cpp/CLion-PEAP-7.dmg"
end

dep "IntelliJ.app" do
  source "http://download-cf.jetbrains.com/idea/ideaIU-13.1.3.dmg"
end

dep "PyCharm.app" do
  source "http://download-cf.jetbrains.com/python/pycharm-professional-3.4.1.dmg"
end

dep "RubyMine.app" do
  source "http://download-cf.jetbrains.com/ruby/RubyMine-6.3.3.dmg"
end

dep "WebStorm.app" do
  source "http://download-cf.jetbrains.com/webstorm/WebStorm-8.0.4.dmg"
end

dep "0xDBE EAP.app" do
  source "http://download-cf.jetbrains.com/dbe/0xdbe-138.551.dmg"
end

dep "jetbrains" do
  requires "Clion.app",
           "IntelliJ.app",
           "PyCharm.app",
           "RubyMine.app",
           "WebStorm.app",
           "0xDBE EAP.app"
end
