dep 'dmd.managed' do
  requires { on :osx, 'homebrew' }
  installs 'dmd'
end

dep 'd-osx' do
  requires 'dmd.managed'
end
