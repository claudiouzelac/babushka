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
		shell("git clone git@bitbucket.org:channeliq/core.git")
	}
end

dep 'get-internal-tools-repo' do
	met? {
		File.directory?('/Users/twessels/work/internal-tools')
	}
	meet {
		shell("git clone git@bitbucket.org:channeliq/internal-tools.git /Users/twessels/work/internal-tools")
	}
end

dep 'work-setup' do
	requires 'create-work-dir'
	requires 'get-core-repo'
	requires 'get-internal-tools-repo'
end

