$:.unshift(File.join(File.dirname(__FILE__), 'lib'))

require 'rubygems'
require 'sweep'

Gem::Specification.new do |gem|
	gem.name = Sweep::APP_NAME
	gem.version = Sweep::VERSION
	gem.date = '2013-06-05'
	gem.summary = Sweep::APP_NAME
	gem.description = 'Simple yet extensible network scanner'
	gem.authors = ['Andrew Benson']
	gem.email = 'sweep@rockstarunix.org'
	gem.files = Dir['[A-Z]*'] + Dir['lib/**/*'] + ['sweep.gemspec']
	gem.executables = Sweep::APP_NAME
	gem.require_paths = ["lib"]
	gem.has_rdoc = 'yard'
	gem.extra_rdoc_files = ["README.md", "LICENSE", "NEWS.md"]

end
