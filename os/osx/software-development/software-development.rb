dep 'dev-work-osx' do
  requires 'git.managed',
           'git_configured'.with(:git_username => 'Stewart Henderson', :git_email => 'shenderson@channeliq.com'),
           'c-osx',
           'python-osx'
end

dep 'dev-home-osx' do
  requires [
               'git.managed',
               'git_configured'.with(:git_username => 'Stewart Henderson', :git_email => 'stewart.henderson@protonmail.com'),
               'c-osx',
               'python-osx',
               'buildsystems-osx'
           ]
end
