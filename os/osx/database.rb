dep "RoboMongo.app" do
  source "http://robomongo.org/files/mac/Robomongo-0.8.4-x86_64.dmg"
end

dep "database" do
  requires "RoboMongo.app"
end
