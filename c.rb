dep "cmake.managed" do
  installs "cmake"
end

dep "valgrind.managed" do
  installs "valgrind"
end

dep "c" do
  requires "cmake.managed",
           "valgrind.managed"
end
