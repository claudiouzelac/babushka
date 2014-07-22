meta :symlink do
  accepts_value_for :original
  accepts_value_for :target

  template {
    met? {
      File.symlink?(target) && File.readlink(target) == original
    }
    meet {
      shell "ln -sfn '#{original}' '#{target}'"
    }
  }
end
