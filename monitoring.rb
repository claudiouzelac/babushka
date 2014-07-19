dep 'htop.bin'
dep 'iotop.bin'
dep 'jnettop.bin'
dep 'lsof.bin'

dep "monitoring" do
  requires "htop.bin",
           "iotop.bin",
           "jnettop.bin",
           "lsof.bin"
end
