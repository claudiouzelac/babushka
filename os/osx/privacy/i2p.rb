dep 'i2p.managed' do
  installs 'i2p'
end

dep 'i2p-osx' do
  requires 'i2p.managed'
end