dep "git.managed" do
  installs "git"
end

dep "svn.managed" do
  installs "svn"
end

dep "SourceTree.app" do
  source "http://downloads.atlassian.com/software/sourcetree/SourceTree_1.9.6.dmg"
end

dep "depot_tools" do
  Babushka::GitRepo.new("https://chromium.googlesource.com/chromium/tools/depot_tools.git").clone
end

dep 'working_copies' do
  met? {
    (ENV['HOME'] / "dev").dir?
  }
  meet {
    log_shell "Make ~/dev", 'mkdir ~/dev'
  }
end

dep "dev" do
  requires "git.managed",
           "gradle.bin",
           "SourceTree.app",
           "depot_tools",
           "working_copies"
end
