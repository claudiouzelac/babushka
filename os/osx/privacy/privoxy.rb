dep 'privoxy' do
  requires { on :osx, 'homebrew' }
  met? {
    '/usr/local/Cellar/privoxy'.p.exists?
  }
  meet {
    shell('brew install privoxy')
  }
end

dep 'privoxy-osx' do
  requires 'privoxy'
end