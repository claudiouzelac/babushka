def bash_profile
  File.join(home, '.curlrc')
end

def home
  ENV['HOME']
end

def bash_profile
  File.join(home, '.bash_profile')
end

dep 'curl_configuration' do
  def config_file
    '~/.curlrc'
  end
  met? {
    Babushka::Renderable.new(config_file).from?('~/.babushka/deps/configs/curlrc.erb')
  }
  meet {
    render_erb '../../../configs/curlrc.erb', :to => config_file
  }
end

dep 'curl-osx' do
  requires 'curl_configuration'
end