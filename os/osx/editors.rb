dep 'Atom.app' do
  source 'https://github.com/atom/atom/releases/download/v0.115.0/atom-mac.zip'
end

dep 'emacs.managed' do
  installs 'emacs'
end

dep 'editors' do
  requires 'Atom.app'
end
