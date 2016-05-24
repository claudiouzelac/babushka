dep('bash_configuration') {
  def config_file
    '~/.bashrc'
  end

  met? {
    Babushka::Renderable.new(config_file).from?('~/.babushka/deps/configs/bashrc.erb')
  }
  meet {
    render_erb '../../../configs/bashrc.erb', :to => config_file
  }
}

dep('bash-osx')  {
  requires 'bash_configuration'
}
