dep "java8" do
  shell "brew cask install java"
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
