dep "protobuf-compiler.managed" do
    installs "protobuf-compiler"
end

dep "dev-ubuntu" do
    requires "protobuf-compiler.managed"
end
