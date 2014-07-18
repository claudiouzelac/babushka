# could not figure out dep for oracle java

dep "git.managed" do
	installs "git"
end

dep "groovy.bin" do
	installs "groovy"
end

dep "maven.managed" do
	installs "maven"
	provides "mvn"
end

dep "elasticsearch.bin" do
	installs "elasticsearch"
end

dep "python.bin" do
	installs "python"
	provides "python ~> 2.7.6"
end

dep "gradle.bin" do
	installs "gradle"
end

dep "postgres.managed" do
	installs "postgresql"
end

dep "tomcat" do
	met? {
		"/usr/local/Cellar/tomcat".p.exist?
	}
	meet {
		shell("brew install tomcat")
	}
end

dep "rvm" do
	met? {
		"/Users/twessels/.rvm".p.exist?
	}
	meet {
		shell("curl -sSL https://get.rvm.io | bash -s stable")
	}
end

dep "ruby-1.9.3" do
	met? {
		shell("rvm list strings").include? "1.9.3"
	}
	meet {
		shell("rvm install 1.9.3")
		shell("rvm use 1.9.3")
	}
end

dep "all-tools" do
	requires "git.managed"
	requires "groovy.bin"
	requires "maven.managed"
	requires "elasticsearch.bin"
	requires "python.bin"
	requires "postgres.managed"
	requires "tomcat"
	requires "gradle.bin"
	requires "rvm"
	requires "ruby-1.9.3"
end
