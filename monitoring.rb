dep "htop-osx.managed"    do   provides ["htop"] end
dep "mtr.managed"         do   provides ["mtr"]  end

dep "monitoring" do
  requires "htop-osx.managed",
           "mtr.managed"
end
