dep 'bazel.managed' do
  requires { on :osx, 'homebrew' }
  installs 'bazel'
end

dep 'buck.managed' do
  requires { on :osx, 'homebrew' }
  installs 'buck'
end

dep 'sbt.managed' do
  requires { on :osx, 'homebrew' }
  installs 'sbt'
end

dep 'maven.managed' do
  requires { on :osx, 'homebrew' }
  installs 'maven'
  provides 'mvn'
end

dep 'gradle.managed' do
  requires { on :osx, 'homebrew' }
  installs 'gradle'
end

dep 'buildsystems-osx' do
  requires 'bazel.managed',
           'buck.managed',
           'sbt.managed',
           'maven.managed',
           'gradle.managed'
end