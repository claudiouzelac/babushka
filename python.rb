dep "python.managed" do
  installs "python"
end

dep "django.pip" do
  installs "Django"
  provides "django-admin.py"
end

dep "Scrapy.pip"
dep "ansi2html.pip"

dep "python" do
  requires "python.bin",
           "django.pip",
           "Scrapy.pip",
           "ansi2html.pip"
end
