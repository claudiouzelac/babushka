# https://www.passwordstore.org/

dep 'pass.managed' do
  installs 'pass'
end

dep 'qtpass' do
  met? {
    '~/Applications/QtPass.app'.p.exists?
  }
  meet {
    shell('brew cask install QtPass')
  }
end

dep 'pass_folder' do
  met? {
    '~/.password-store'.p.exists
  }
  meet {
    shell('pass init "ZX2C4 Password Storage Key"')
    shell('pass git init')
    #NOTE: you will need to pass git remote add origin {your_repor}
  }
end

dep 'pass-osx' do
  requires %w(
              pass.managed
              qtpass
              pass_folder
              )
end