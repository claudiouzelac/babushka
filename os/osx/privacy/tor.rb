dep 'tor.managed' do
  installs 'tor'
end

dep 'tor_directory' do
  def tor_directory
    '~/.tor'
  end

  met? {
    tor_directory.p.exists?
  }
  meet {
    shell("mkdir -p #{tor_directory}")
  }
end

dep 'tor_configuration' do
  requires 'tor.managed',
           'tor_directory'
  def config_file
    '~/.tor/torrc'
  end
  met? {
    Babushka::Renderable.new(config_file).from?('~/.babushka/deps/configs/torrc.erb')
  }
  meet {
    render_erb '../../../configs/torrc.erb', :to => config_file
  }
end

dep 'tor-osx' do
  requires 'tor_configuration'
end