dep 'IntelliJ.app' do
  source 'http://download-cf.jetbrains.com/idea/ideaIU-13.1.3.dmg'
end

dep 'PyCharm.app' do
  source 'http://download-cf.jetbrains.com/python/pycharm-professional-3.4.1.dmg'
end

dep 'jetbrains-paid' do
  requires 'IntelliJ.app',
           'PyCharm.app',
end
