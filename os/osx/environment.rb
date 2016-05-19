def home
  ENV['HOME']
end

def bash_profile
  File.join(home, '.bash_profile')
end

def bash_profile
  File.join(home, '.curlrc')
end

dep 'curl_configuration' do
  def config_file
    '~/.curlrc'
  end
  met? {
    Babushka::Renderable.new(config_file).from?('~/.babushka/deps/configs/curlrc.erb')
  }
  meet {
    render_erb '../../configs/curlrc.erb', :to => config_file
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

dep 'environment-osx' do
  requires 'ssh-key',
           'curl_configuration'
end
