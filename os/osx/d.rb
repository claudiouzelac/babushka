dep 'dmd.managed' do
  installs 'dmd'
end

dep 'd-osx' do
  requires 'dmd.managed'
end
