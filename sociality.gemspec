# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sociality/version'

Gem::Specification.new do |spec|
  spec.name          = "sociality"
  spec.version       = Sociality::VERSION
  spec.authors       = ["Amirkhan Mullabaev"]
  spec.email         = ["a.mullabaev@gmail.com"]
  spec.summary       = ["Gem adds flat-designed buttons for sharing posts in social networks"]
  spec.description   = ""
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "ruby", "~> 2.1.5"
end
