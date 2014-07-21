dep "Clion.app" do
  source "http://download.jetbrains.com/cpp/CLion-PEAP-7.dmg"
end

dep "0xDBE EAP.app" do
  source "http://download-cf.jetbrains.com/dbe/0xdbe-138.551.dmg"
end

dep "jetbrains-eap" do
  requires "Clion.app",
           "0xDBE EAP.app"
end
