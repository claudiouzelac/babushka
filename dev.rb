dep "git.managed" do
  installs "git"
end

dep "svn.managed" do
  installs "svn"
end

dep "cmake.managed" do
  installs "cmake"
end

dep "maven.managed" do
  installs "maven"
  provides "mvn"
end

dep "gradle.bin" do
  installs "gradle"
end

dep "python.bin" do
  installs "python"
  provides "python ~> 2.7.6"
end

dep "depot_tools" do
  Babushka::GitRepo.new("https://chromium.googlesource.com/chromium/tools/depot_tools.git").clone
end

dep "dev" do
  requires "git.managed"
  requires "cmake.managed"
  requires "maven.managed"
  requires "python.bin"
  requires "gradle.bin"
  requires "depot_tools"
end
