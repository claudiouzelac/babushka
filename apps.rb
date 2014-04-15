# could not figure out dep for java

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

dep "postgres.managed" do
	installs "postgresql"
end

dep "eclipse" do
	met? {
		"/Applications/eclipse".p.exist?
	}
	meet {
		shell("brew install wget")
		shell("wget -O eclipse-jee-kepler-SR2-macosx-cocoa-x86_64.tar.gz 'https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/kepler/SR2/eclipse-jee-kepler-SR2-macosx-cocoa-x86_64.tar.gz&r=1'") 
		shell("tar -xzf eclipse-jee-kepler-SR2-macosx-cocoa-x86_64.tar.gz")
		shell("mv eclipse /Applications")
	}
end

dep "tomcat" do
	met? {
		"/usr/local/tomcat".p.exist?	
	}
	meet {
		shell("wget http://www.motorlogy.com/apache/tomcat/tomcat-7/v7.0.53/bin/apache-tomcat-7.0.53.tar.gz")
		shell("tar -xvzf apache-tomcat-7.0.53.tar.gz -C /usr/local")
		shell("ln -s /usr/local/apache-tomcat-7.0.53 /usr/local/tomcat")
	}
end

dep "all-packaged-apps" do
	requires "git.managed"
	requires "groovy.bin"
	requires "maven.managed"
	requires "elasticsearch.bin"
	requires "python.bin"
	requires "postgres.managed"
	requires "eclipse"
	requires "tomcat"
end
