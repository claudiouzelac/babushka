dep 'cassandra.managed' do
  requires { on :osx, 'homebrew' }
  installs 'cassandra'
end