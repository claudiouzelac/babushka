dep 'openssl.managed' do
  requires { on :osx, 'homebrew' }
  installs 'openssl'
end