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
    Babushka::Renderable.new(config_file).from?('~/.babushka/deps/configs/ssh_config.erb')
  }
  meet {
    render_erb '../../../configs/ssh_config.erb', :to => config_file
  }
end

dep 'ssh-osx' do
  requires 'ssh_directory',
           'ssh_configuration'
end