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

dep 'pass-osx' do
  requires 'pass.managed',
           'qtpass'
end