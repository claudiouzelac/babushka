dep "git.managed" do
  installs "git"
end

dep "svn.managed" do
  installs "svn"
end

dep "depot_tools" do
  Babushka::GitRepo.new("https://chromium.googlesource.com/chromium/tools/depot_tools.git").clone
end

dep 'Atom.app' do
  source 'https://github.com/atom/atom/releases/download/v0.115.0/atom-mac.zip'
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
           "depot_tools",
           "Atom.app",
           "working_copies"
end
