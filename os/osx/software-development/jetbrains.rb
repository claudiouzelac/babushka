dep 'IntelliJ.app' do
  source 'https://d1opms6zj7jotq.cloudfront.net/idea/ideaIC-2016.1.2b.dmg'
end

dep 'PyCharm.app' do
  source 'https://d1opms6zj7jotq.cloudfront.net/python/pycharm-community-2016.1.3.dmg'
end

dep 'jetbrains-osx' do
  requires 'IntelliJ.app',
           'PyCharm.app'
end
