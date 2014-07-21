dep "java8" do
  met? {
    Dir.exists?("/Library/Java/JavaVirtualMachines/")
  }
  meet {
    shell "brew cask install java"
  }
end

dep "scala.managed" do
  installs "scala"
end

dep "sbt.managed" do
  installs "sbt"
end

dep "akka.managed" do
  installs "akka"
end

dep "maven.managed" do
  installs "maven"
  provides "mvn"
end

dep "gradle.managed" do
  installs "gradle"
end

dep "java" do
  requires "java8",
           "scala.managed",
           "sbt.managed",
           "akka.managed",
           "maven.managed",
           "gradle.managed"
end
