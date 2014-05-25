dep "strace.managed" do
    installs "strace"
end

dep "ubuntu-monitoring" do
    requires "strace.managed"
end
