dep 'ssh_directory' do
  def ssh_dir
    '~/.ssh'
  end

  met? {
    ssh_dir.p.exists?
  }
  meet {
    shell("mkdir -p #{ssh_dir}")
    shell("sudo chmod -R `whoami` #{ssh_dir}")
  }
end

dep 'ssh_configuration' do
  requires 'ssh_directory'

  def config_file
    '~/.ssh/ssh_config'
  end

  met? {
    Babushka::Renderable.new(config_file).from?('~/.babushka/deps/configs/ssh/ssh_config.erb')
  }
  meet {
    render_erb '../../../configs/ssh/ssh_config.erb', :to => config_file
  }
end

dep 'known_hosts' do
  requires 'ssh_directory'

  def config_file
    '~/.ssh/known_hosts'
  end

  met? {
    Babushka::Renderable.new(config_file).from?('~/.babushka/deps/configs/ssh/known_hosts.erb')
  }
  meet {
    render_erb '../../../configs/ssh/known_hosts.erb', :to => config_file
  }
end

dep 'generate_key', :key, :passphrase do

  def path
    "~/.ssh/#{key}"
  end

  met? {
    "#{path}".p.exists?
  }
  meet {
    shell("ssh-keygen -t rsa -b 4096 -P '#{passphrase}' -f #{path} -q")
  }
  after {
    log_ok('SSH keys generated for ' + key)
  }
end


dep 'ssh-osx' do
  requires 'ssh_directory',
           'ssh_configuration',
           'known_hosts'
           # 'generate_key'.with(:key => 'channeliq-bitbucket', :passphrase => ENV['WORK_PASSPHRASE']),
           # 'generate_key'.with(:key => 'personal-bitbucket', :passphrase => ENV['BITBUCKET_PASSPHRASE']),
           # 'generate_key'.with(:key => 'personal-github', :passphrase =>  ENV['GITHUB_PASSPHRASE'])
end