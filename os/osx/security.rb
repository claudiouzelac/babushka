dep 'pass.managed' do
  installs 'pass'
end

dep 'security' do
  requires 'pass.managed'
end
