dep "python.managed" do
  installs "python"
end

dep 'pip' do
  requires {
    on :brew, 'python.bin' # homebrew installs pip along with python.
    otherwise 'pip.bin'
  }
end

dep 'pip.bin' do
  requires 'python.bin' # To ensure python-dev is pulled in.
  installs 'python-pip'
end

dep "django.pip" do
  installs "Django"
  provides "django-admin.py"
end

dep "Scrapy.pip"
dep "ansi2html.pip"

dep "python" do
  requires "python.managed",
           "pip",
           "pip.bin",
           "django.pip",
           "Scrapy.pip",
           "ansi2html.pip"
end
