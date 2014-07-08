# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mongoid4/uuid/version'

Gem::Specification.new do |spec|
  spec.name          = "mongoid4-uuid"
  spec.version       = Mongoid4::UUID::VERSION
  spec.authors       = ["John Allen", "Adam Ferguson"]
  spec.email         = ["john@threedogconsulting.com", "Adam.Brugh.Ferguson@gmail.com"]
  spec.description   = %q{UUID's for Mongoid4}
  spec.summary       = %q{Use UUID's as primary keys in Mongoid collections}
  spec.homepage      = "https://github.com/AdamFerguson/mongoid4-uuid"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "uuid", "~> 2"
  spec.add_dependency "mongoid", "~> 4"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "pry", "~> 0.9"
  spec.add_development_dependency "rake", "~> 0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
