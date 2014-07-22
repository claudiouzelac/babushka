dep "Scala" do
  met? {
    "~/Library/Application Support/IntelliJIdea13/Scala".p.exists?
  }
  meet {
    source "http://plugins.jetbrains.com/files/1347/16634/scala-intellij-bin-0.38.441.zip"
  }
end

dep "Lombok" do
  met? {
    "~/Library/Application Support/IntelliJIdea13/lombok-plugin-0.8.6-13.jar".p.exists?
  }
  meet {
    source "http://plugins.jetbrains.com/files/6317/15981/lombok-plugin-0.8.6-13.jar"
  }
end

dep "ProtoBuf" do
  met? {
    "~/Library/Application Support/IntelliJIdea13/lombok-plugin-0.8.6-13.jar".p.exists?
  }
  meet {
    source "http://plugins.jetbrains.com/files/6317/15981/lombok-plugin-0.8.6-13.jar"
  }
end

dep "intellij-plugins" do
  requires "Scala",
           "Lombok"
end
