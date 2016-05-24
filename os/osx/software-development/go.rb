dep 'go.managed' do
  requires { on :osx, 'homebrew' }
  installs 'go'
end

dep 'go-osx' do
  requires 'go.managed'
end
