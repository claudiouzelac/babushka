dep 'java8' do
  met? {
    Dir.exists?('/Library/Java/JavaVirtualMachines/')
  }
  meet {
    shell 'brew cask install java'
  }
end

dep 'scala.managed' do
  installs 'scala'
end

dep 'akka.managed' do
  installs 'akka'
end

dep 'tomcat.managed' do
  installs 'tomcat'
end

dep 'java-osx' do
  requires 'java8',
           'scala.managed',
           'sbt.managed',
           'akka.managed',
           'maven.managed',
           'gradle.managed'
           'tomcat.manged'
end
