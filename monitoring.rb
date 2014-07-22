dep 'htop-osx.managed' do
  provides ['htop']
end

dep "monitoring" do
  requires "htop-osx.managed"
end
