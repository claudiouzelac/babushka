dep 'cmake.managed' do
  requires { on :osx, 'homebrew' }
  installs 'cmake'
end

dep 'lua.managed' do
  requires { on :osx, 'homebrew' }
  installs 'lua'
end

dep 'qt.app' do
  source 'http://anychimirror101.mirrors.tds.net/pub/Qt/official_releases/online_installers/qt-opensource-mac-x64-1.6.0-4-online.dmg'
end

dep 'valgrind.managed' do
  requires { on :osx, 'homebrew' }
  installs 'valgrind'
end

dep 'scons.managed' do
  requires { on :osx, 'homebrew' }
  installs 'scons'
end

dep 'qemu.managed' do
  requires { on :osx, 'homebrew' }
  installs 'qemu'
end

dep 'libevent.managed' do
  requires { on :osx, 'homebrew' }
  installs 'libevent'
end

dep 'nasm.managed' do
  requires { on :osx, 'homebrew' }
  installs 'nasm'
end

dep 'doxygen.managed' do
  requires { on :osx, 'homebrew' }
  installs 'doxygen'
end

dep 'c-osx' do
  requires 'cmake.managed',
           'lua.managed',
           'qt.app',
           'valgrind.managed',
           'scons.managed',
           'nasm.managed',
           'doxygen.managed'
end
