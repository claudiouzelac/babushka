dep 'Firefox.app' do
  source 'https://download-installer.cdn.mozilla.net/pub/firefox/releases/46.0.1/mac/en-US/Firefox%2046.0.1.dmg'
end

dep 'firefox_extension_directory' do
  def extension_directory
    '~/.firefox_extensions'
  end

  met? {
    extension_directory.p.exists?
  }
  meet {
    shell("mkdir -p #{extension_directory}")
  }
end

dep 'get_extensions' do
  requires 'firefox_extension_directory'
  def extension_directory
    '~/.firefox_extensions'
  end

  shell("cd #{extension_directory} && curl -O https://addons.cdn.mozilla.net/user-media/addons/464050/disconnect-3.15.3-fx.xpi")
  shell("cd #{extension_directory} && curl -O https://addons.cdn.mozilla.net/user-media/addons/523652/passff-0.1.31-fx.xpi")
  shell("cd #{extension_directory} && curl -O https://addons.cdn.mozilla.net/user-media/addons/607454/ublock_origin-1.7.0-sm+tb+fx+an.xpi")
  shell("cd #{extension_directory} && curl -O https://addons.cdn.mozilla.net/user-media/addons/473878/random_agent_spoofer-0.9.5.5-fx.xpi")
  shell("cd #{extension_directory} && curl -O https://addons.cdn.mozilla.net/user-media/addons/415846/self_destructing_cookies-0.4.10-an+fx.xpi")
  shell("cd #{extension_directory} && curl -O https://www.eff.org/files/https-everywhere-latest.xpi")
  shell("cd #{extension_directory} && curl -O https://addons.cdn.mozilla.net/user-media/addons/521554/decentraleyes-1.3.5-fx+an+sm.xpi")
  shell("cd #{extension_directory} && curl -O https://addons.cdn.mozilla.net/user-media/addons/613250/umatrix-0.9.3.3-sm+fx.xpi")
  shell("cd #{extension_directory} && curl -O https://addons.cdn.mozilla.net/user-media/addons/722/noscript_security_suite-2.9.0.11-fn+sm+fx.xpi")
  shell("cd #{extension_directory} && curl -O https://addons.cdn.mozilla.net/user-media/addons/542906/policeman-0.18.1-fx.xpi")
end

dep 'install_global_extensions' do
  requires 'get_extensions'
  def extension_directory
    '~/.firefox_extensions'
  end

  Dir.glob("#{extension_directory}/*.xpi") do |extension_file|
    shell("~/Applications/Firefox.app/Contents/MacOS/firefox -install-global-extension #{extension_file}")
  end
end

dep 'browsers-osx' do
  requires 'Firefox.app',
           'get_extensions',
           'install_global_extensions'
end