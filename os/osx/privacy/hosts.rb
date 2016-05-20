def home
  ENV['HOME']
end

def hosts_repo
  File.join(home, 'code', 'hosts')
end

dep 'hosts' do
  met? {
    Babushka::GitRepo.new(hosts_repo).exists?
  }
  meet {
    Babushka::GitRepo.new(hosts_repo).clone! 'https://github.com/StevenBlack/hosts.git'
    shell("python #{hosts_repo}/updateHostsFile.py --auto")
    shell("sudo mv #{hosts_repo}/hosts /etc/hosts")
  }
end