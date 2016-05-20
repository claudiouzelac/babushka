dep 'keybase.managed' do
  installs 'keybase'
end

dep 'keybase-osx' do
  requires 'keybase.managed'
end