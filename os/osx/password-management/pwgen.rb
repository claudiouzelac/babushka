dep 'pwgen.managed' do
  requires { on :osx, 'homebrew' }
  installs 'pwgen'
end