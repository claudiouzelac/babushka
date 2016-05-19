dep 'dmd.managed' do
  installs 'dmd'
end

dep 'c' do
  requires 'dmd.managed'
end
