dep 'bazel.managed' do
  installs 'bazel'
end

dep 'buck.managed' do
  installs 'buck'
end

dep 'sbt.managed' do
  installs 'sbt'
end

dep 'maven.managed' do
  installs 'maven'
  provides 'mvn'
end

dep 'gradle.managed' do
  installs 'gradle'
end

dep 'buildsystems-osx' do
  requires 'bazel.managed',
           'buck.managed',
           'sbt.managed',
           'maven.managed',
           'gradle.managed'
end