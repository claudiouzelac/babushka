dep 'bash_configuration' do
  def config_file
    '~/.bashrc'
  end
  met? {
    Babushka::Renderable.new(config_file).from?('~/.babushka/deps/configs/bashrc.erb')
  }
  meet {
    render_erb '../../../configs/bashrc.erb', :to => config_file
  }
end

dep 'bash-osx' do
  requires 'bash_configuration'
end