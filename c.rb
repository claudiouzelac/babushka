dep 'cmake.managed' do
  installs 'cmake'
end

dep 'lua.managed' do
  installs 'lua'
end

dep 'qt.app' do
  source 'http://anychimirror101.mirrors.tds.net/pub/Qt/official_releases/online_installers/qt-opensource-mac-x64-1.6.0-4-online.dmg'
end

dep 'valgrind.managed' do
  installs 'valgrind'
end

dep 'scons.managed' do
  installs 'scons'
end

dep 'qemu.managed' do
  installs 'qemu'
end

dep 'libevent.managed' do
  installs 'libevent'
end

dep 'nasm.managed' do
  installs 'nasm'
end

dep 'doxygen.managed' do
  installs 'doxygen'
end

dep 'c' do
  requires 'cmake.managed',
           'lua.managed',
           'qt.app',
           'valgrind.managed',
           'scons.managed',
           'nasm.managed',
           'doxygen.managed'
end
