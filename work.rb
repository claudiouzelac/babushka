dep 'create-work-dir' do
	met? {
		File.directory?('/Users/twessels/work')
	}
	meet {
		Dir.mkdir '/Users/twessels/work'
	}
end

dep 'get-core-repo' do
	met? {
		File.directory?('/Users/twessels/work/core')
	}
	meet {
		shell("git clone https://twessels@bitbucket.org/channeliq/core.git")	
	}
end

dep 'all-work' do
	requires 'create-work-dir'
	requires 'get-core-repo'
end

