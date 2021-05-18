# coding: utf-8

require 'json'

# Dont panic that this path seems to be wrong! The path to package.json
# will get autoupdated when building the gem.
packageFilePath = File.join(__dir__, '../package.json')
packageFile = JSON.parse(File.read(packageFilePath))

Gem::Specification.new do |spec|
  spec.name          = packageFile['name']
  spec.version       = packageFile['version']
  spec.authors       = packageFile['contributors'].map { |c| c['name'] }
  spec.email         = packageFile['contributors'].map { |c| c['email'] }

  spec.summary       = packageFile['description']
  spec.homepage      = packageFile['homepage']
  spec.license       = packageFile['license']

  spec.files         = Dir['**/*'].keep_if { |file| File.file?(file) }

  spec.add_runtime_dependency "jekyll", "~> 3.6"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
