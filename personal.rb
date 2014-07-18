dep 'working_copies' do
  met? {
    (ENV['HOME'] / "dev").dir?
  }
  meet {
    log_shell "Make ~/dev", 'mkdir ~/dev'
  }
end
