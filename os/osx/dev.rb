dep 'git.managed' do installs 'git'
end

dep 'svn.managed' do installs 'svn'
end

dep 'pidof.managed' do installs 'pidof' end

dep 'depot_tools' do
  Babushka::GitRepo.new('https://chromium.googlesource.com/chromium/tools/depot_tools.git').clone
end

dep 'dev' do
  requires 'git.managed',
           'gradle.managed',
           'depot_tools',
           'pidof.managed'
end
