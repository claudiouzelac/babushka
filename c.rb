dep "cmake.managed" do
  installs "cmake"
end

dep "valgrind.managed" do
  installs "valgrind"
end

dep "scons.managed" do
  installs "scons"
end

dep "qemu.managed" do
  installs "qemu"
end

dep "libevent.managed" do
  installs "libevent"
end

dep "ddd.managed" do
  installs "ddd"
end

dep 'nasm.managed' do
  installs 'nasm'
end

dep 'doxygen.managed' do
  installs 'doxygen'
end

dep "c" do
  requires 'cmake.managed',
           'valgrind.managed',
           'scons.managed',
           'ddd.managed',
           'nasm.managed',
           'doxygen.managed'
end
