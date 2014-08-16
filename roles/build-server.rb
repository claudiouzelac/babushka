dep 'teamcity' do
  met? {
    File.exists? "/user/share/teamcity"
  }
  meet {
    log_shell 'mkdir /usr/share/teamcity', "sudo mkdir -p /usr/share/teamcity;"
    cd("/usr/share/teamcity") do
      log_shell 'downloading', "sudo wget http://download-cf.jetbrains.com/teamcity/TeamCity-8.1.4.tar.gz"
      log_shell 'unpacking', "sudo tar xzvf TeamCity-8.1.4.tar.gz"
    end
    after {
      log 'cleaning up'
      'usr/share/local/teamcity/TeamCity-8.1.4.tar.gz'.p.remove
    }
  }
end

dep 'build-server' do
  requires 'teamcity'
end
