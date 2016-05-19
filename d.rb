dep 'dmd.managed' do
  installs 'dmd'
end

dep 'd' do
  requires 'dmd.managed'
end
