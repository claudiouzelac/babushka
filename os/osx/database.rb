dep "redis.managed" do
  installs "redis"
end

dep "sqlite.managed" do
  installs "sqlite"
end

dep "database" do
  requires "redis.managed",
           "sqlite.managed"
end
