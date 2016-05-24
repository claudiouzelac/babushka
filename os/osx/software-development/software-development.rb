dep('dev-work-osx') {
  requires 'git.managed',
           'git_configured'.with(:git_username => 'Stewart Henderson', :git_email => 'shenderson@channeliq.com'),
           'c-osx',
           'python-osx'
}

dep('dev-home-osx') {
  requires [
               'git.managed',
               'git_configured'.with(:git_username => 'Stewart Henderson', :git_email => 'stewart.henderson@protonmail.com'),
               'c-osx',
               'python-osx',
               'buildsystems-osx'
           ]
}
