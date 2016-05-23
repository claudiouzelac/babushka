dep 'dev-work-osx' do
  requires 'git.managed',
           'git_configured'.with(:git_username => 'Stewart Henderson',:git_email =>'shenderson@channeliq.com'),
           'c-osx',
           'python-osx'
end
