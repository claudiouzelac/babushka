dep "python.managed" do
  installs "python"
end

dep 'pip' do
  requires {
    on :brew, 'python.bin' # homebrew installs pip along with python.
    otherwise 'pip.bin'
  }
end

dep "django.pip" do
  installs "Django"
  provides "django-admin.py"
end

dep "aws-product-api" do
  meet {
    shell "sudo pip install git+https://github.com/yoavaviram/python-amazon-simple-product-api.git"
  }
end

dep "kafka" do
  meet {
    shell "sudo pip install git+https://github.com/mumrah/kafka-python.git"
  }
end

dep "boto" do
  meet {
    shell "sudo pip install boto"
  }
end

dep "beautifulsoup4" do
  meet {
    shell "sudo pip install BeautifulSoup4"
  }
end

dep "PyTop" do
  meet {
    shell "sudo pip install git+https://github.com/bububa/pyTOP.git"
  }
end

dep "python-dateutil" do
  meet {
    shell "sudo pip install python-dateutil"
  }
end

dep "requests" do
  meet {
    shell "sudo pip install requests"
  }
end

dep "redis" do
  meet {
    shell "sudo pip install redis"
  }
end

dep "scales" do
  meet {
    shell "sudo pip install git+https://github.com/Cue/scales.git"
  }
end

dep "protobuf" do
  meet {
    shell "sudo pip install protobuf"
  }
end

dep "gitpython" do
  meet {
    shell "sudo pip install gitpython"
  }
end

dep "python" do
  requires "python.managed",
           "pip",
           "aws-product-api",
           "kafka",
           "boto",
           "beautifulsoup4",
           "PyTop",
           "python-dateutil",
           "requests",
           "redis",
           "scales",
           "protobuf",
           "gitpython"
end
