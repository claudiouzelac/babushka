dep "phinze" do
  shell "brew tap phinze/homebrew-cask"
end

dep "cask.managed" do
  installs "brew-cask"
end

dep "taps" do
  requires "phinze",
           "cask.managed"
end
