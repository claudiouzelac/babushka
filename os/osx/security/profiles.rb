dep 'profile_directory' do
  def seatbelt_dir
    '~/.profiles'
  end

  met? {
    seatbelt_dir.p.exists?
  }
  meet {
    shell("mkdir -p #{seatbelt_dir}")
    # shell("sudo chmod -R `whoami` #{seatbelt_dir}")
  }
end

dep 'suppress_diagnostic_info' do
  requires 'profile_directory'

  def diagnostic_info
    '~/.profiles/suppress_diagnostic_info.mobileconfig'
  end

  met? {
    Babushka::Renderable.new(diagnostic_info).from?('~/.babushka/deps/osx-profiles/suppress_diagnostic_info.mobileconfig.erb')
  }
  meet {
    render_erb '../../../osx-profiles/suppress_diagnostic_info.mobileconfig.erb', :to => diagnostic_info
    shell("sudo /usr/bin/profiles -IF #{diagnostic_info}")
  }
end

dep 'cant_disable_filevault' do
  requires 'profile_directory'

  def diagnostic_info
    '~/.profiles/cant_disable_filevault.mobileconfig'
  end

  met? {
    Babushka::Renderable.new(diagnostic_info).from?('~/.babushka/deps/osx-profiles/cant_disable_filevault.mobileconfig.erb')
  }
  meet {
    render_erb '../../../osx-profiles/cant_disable_filevault.mobileconfig.erb', :to => diagnostic_info
    shell("sudo /usr/bin/profiles -IF #{diagnostic_info}")
  }
  end

dep 'osx-profiles' do
  requires 'suppress_diagnostic_info',
           'cant_disable_filevault'
end