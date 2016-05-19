def home
  ENV['HOME']
end

def bash_profile
  File.join(home, '.bash_profile')
end

dep 'cask' do
  met? {
    '/usr/local/Cellar/cask'.p.exists?
  }
  meet {
    shell 'brew install caskroom/cask/brew-cask'
  }
end

dep 'ssh-key' do
  met? {
    File.exists?(File.join(home, '.ssh', 'id_rsa'))
  }

  meet {
    passphrase = prompt_for_value('passphrase (or just hit enter if you suck at security)', :default => '')
    shell "ssh-keygen -f #{home}/.ssh/id_rsa -N '#{passphrase}'"
  }
end

dep 'environment' do
  requires 'ssh-key',
           'cask'
end
