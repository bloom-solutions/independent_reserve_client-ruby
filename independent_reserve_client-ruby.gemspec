# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "independent_reserve_client/ruby/version"

Gem::Specification.new do |spec|
  spec.name          = "independent_reserve_client-ruby"
  spec.version       = IndependentReserveClient::Ruby::VERSION
  spec.authors       = ["Arman Jon Villalobos"]
  spec.email         = ["me@armanjon.com"]

  spec.summary       = %q{Ruby Wrapper for IndependentReserve's API}
  spec.description   = %q{Ruby Wrapper for IndependentReserve's API}
  spec.homepage      = "https://github.com/imacchiato/independent_reserve_client-ruby"
  spec.license       = "MIT"


  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
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

  spec.add_dependency "api_client_base", "~> 1.0"
  spec.add_dependency "typhoeus", "~> 1.0"
  spec.add_dependency "virtus", "~> 1.0"
  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "rspec", "~> 3.5"
  spec.add_development_dependency "timecop", "0.8.1"
  spec.add_development_dependency "vcr", "~> 3.0"
  spec.add_development_dependency "virtus-matchers", ">= 0.4.0"
  spec.add_development_dependency "webmock", "~> 2.3"
  spec.add_development_dependency "factory_girl"

end
