dep 'OmniGraffle.app' do
  source 'http://www.omnigroup.com/ftp1/pub/software/MacOSX/10.5/OmniGraffle-5.2.3-English.dmg'
end

dep "design" do
  requires "OmniGraffle.app"
end
