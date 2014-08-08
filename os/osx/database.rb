dep 'redis.managed' do
  installs 'redis'
end

dep 'sqlite.managed' do
  installs 'sqlite'
end

dep 'mysql.managed' do
  installs 'mysql'
end

dep "database" do
  requires 'redis.managed',
           'sqlite.managed',
           'mysql.managed'
end
