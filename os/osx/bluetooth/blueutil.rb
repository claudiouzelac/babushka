dep 'blueutil.managed' do
  requires { on :osx, 'homebrew' }
  installs 'blueutil'
end

dep 'turn_bluetooth_off' do
  requires 'blueutil.managed'
  shell('blueutil power 1')
end

dep 'bluetooth-osx' do
  requires 'turn_bluetooth_off'
end