dep 'Scala' do
  met? {
    '~/Library/Application Support/IntelliJIdea13/Scala'.p.exists?
  }
  meet {
    shell("cd ~/Library/Application\\ Support/IntelliJIdea13/ && http://plugins.jetbrains.com/files/1347/16634/scala-intellij-bin-0.38.441.zip && unzip scala-intellij-bin-0.38.441.zip")
  }
end

dep 'Lombok' do
  met? {
    '~/Library/Application Support/IntelliJIdea13/lombok-plugin-0.8.6-13.jar'.p.exists?
  }
  meet {
    shell("cd ~/Library/Application\\ Support/IntelliJIdea13/ && curl -O http://plugins.jetbrains.com/files/6317/15981/lombok-plugin-0.8.6-13.jar")
  }
end

dep 'ProtoBuf' do
  met? {
    '~/Library/Application Support/IntelliJIdea13/Google_Protocol_Buffers_support_0.5.7.jar'.p.exists?
  }
  meet {
    shell("cd ~/Library/Application\\ Support/IntelliJIdea13/ && curl -O http://plugins.jetbrains.com/files/4942/16599/Google_Protocol_Buffers_support_0.5.7.zip && unzip -o Google_Protocol_Buffers_support_0.5.7.zip")
  }
end

dep 'intellij-plugins' do
  requires 'Scala',
           'Lombok',
           'ProtoBuf'
end
