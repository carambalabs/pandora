# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pandora/version'

Gem::Specification.new do |spec|
  spec.name          = "pandora"
  spec.version       = Pandora::VERSION
  spec.authors       = ["Pedro Piñera Buendía"]
  spec.email         = ["pepibumur@gmail.com"]
  spec.summary       = %q{Tool for automating frameworks creation & integration}
  # spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "http://frameworkoriented.io"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'git', '~> 1.3'
  spec.add_dependency 'xcodeproj', '~> 1.3'

  spec.add_development_dependency 'maxitest', '~> 2.2'
  spec.add_development_dependency 'shoulda-context', "~> 1.2"
  spec.add_development_dependency 'coveralls', "~> 0.8"
  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
