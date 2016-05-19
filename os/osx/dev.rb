dep 'git.managed' do
  installs 'git'
end

dep 'dev-osx' do
  requires 'git.managed',
           'c-osx',
           'd-osx',
           'python-osx',
           'java'
end
