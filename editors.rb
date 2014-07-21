dep 'Atom.app' do
  source 'https://github.com/atom/atom/releases/download/v0.115.0/atom-mac.zip'
end

dep "Sublime Text 2.app" do
  source "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2.dmg"
end

dep "editors" do
  requires "Atom.app",
           "Sublime Text 2.app"
end
