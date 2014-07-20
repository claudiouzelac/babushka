dep "java8" do
  met? {
    "/Library/Java/JavaVirtualMachines/jdk1.8.0_05.jdk/Contents/Home/".p.exists?
  }
  meet {
    shell "brew cask install java"
  }
end

dep "maven.managed" do
  installs "maven"
  provides "mvn"
end

dep "gradle.bin" do
  installs "gradle"
end

dep "java" do
  requires "java8",
           "maven.managed",
           "gradle.bin"
end
