dep "openjdk-7-jdk.src" do
  source "http://http.us.debian.org/debian/pool/main/o/openjdk-7/openjdk-7-jdk_7u65-2.5.1-3_amd64.deb"
  process_source {
    sudo("dpkg -i openjdk-7-jdk_7u65-2.5.1-3_amd64.deb")
  }
end

dep "scala.managed" do
    installs "scala"
end

dep "sbt.src" do
  source "http://repo.scala-sbt.org/scalasbt/sbt-native-packages/org/scala-sbt/sbt/0.13.1/sbt.deb"
  process_source {
    sudo("dpkg -i sbt.deb")
  }
end

dep "java-ubuntu" do
    requires "openjdk-7-jdk.src",
   	     "scala.managed",
	     "sbt.src"
end
