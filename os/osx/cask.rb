dep 'homebrew-cask', :for => :osx, :template => 'lib' do
  requires 'homebrew tap'.with('phinze/cask')
  installs 'brew-cask'
end
