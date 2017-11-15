# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "independent_reserve_client/version"

Gem::Specification.new do |spec|
  spec.name          = "independent_reserve_client"
  spec.version       = IndependentReserveClient::VERSION
  spec.authors       = ["Arman Jon Villalobos", "Ace Subido"]
  spec.email         = ["me@armanjon.com", "ace.subido@gmail.com"]

  spec.summary       = %q{Ruby Wrapper for IndependentReserve's API}
  spec.description   = %q{Ruby Wrapper for IndependentReserve's API}
  spec.homepage      = "https://github.com/bloom-solutions/independent_reserve_client-ruby"
  spec.license       = "MIT"
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
