dep "git.managed"               do installs "git" end
dep "svn.managed"               do installs "svn" end
dep "SourceTree.app"            do source "http://downloads.atlassian.com/software/sourcetree/SourceTree_1.9.6.dmg" end
dep "Tower.app"                 do source "http://www.git-tower.com/download" end
dep "Versions.app"              do source "http://versionsapp.com/redirect/versionslatest" end
dep "Dash.app"                  do source "http://newyork2.kapeli.com/Dash.zip" end
dep "HTTP Client.app"           do source "http://ditchnet.org/httpclient/dist/HTTPClient.zip" end
dep "Charles.app"               do source "http://www.charlesproxy.com/assets/release/3.7/charles_macosx.zip" end
dep "HTTPScoop.app"             do source "http://www.tuffcode.com/releases/HTTPScoop_1.4.3.dmg" end

dep "depot_tools" do
  Babushka::GitRepo.new("https://chromium.googlesource.com/chromium/tools/depot_tools.git").clone
end

dep "code" do
  met? { shell("file -b ~/code") == "directory" }
  meet { shell("mkdir -p ~/code") }
end

dep "dev" do
  requires "git.managed",
           "gradle.managed",
           "SourceTree.app",
           "depot_tools",
           "Dash.app",
           "code"
end
