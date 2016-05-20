dep 'ssh-key' do
  met? {
    File.exists?(File.join(home, '.ssh', 'id_rsa'))
  }

  meet {
    passphrase = prompt_for_value('passphrase (or just hit enter if you suck at security)', :default => '')
    shell "ssh-keygen -f #{home}/.ssh/id_rsa -N '#{passphrase}'"
  }
end

dep 'environment-osx' do
  requires 'ssh-key',
           'curl_configuration'
end
