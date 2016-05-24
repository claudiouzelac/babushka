
def bash_profile
  def home
    ENV['HOME']
  end

  File.join(home, '.bash_profile')
end

dep('curl_configuration') {
  def config_file
    '~/.curlrc'
  end
  met? {
    Babushka::Renderable.new(config_file).from?('~/.babushka/deps/configs/curlrc.erb')
  }
  meet {
    render_erb '../../../configs/curlrc.erb', :to => config_file
  }
}

dep('curl-osx') {
  requires 'curl_configuration'
}
