dep 'go.managed' do
  installs 'go'
end

dep 'go-osx' do
  requires 'go.managed'
end
