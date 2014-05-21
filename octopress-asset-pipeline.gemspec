# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'octopress-asset-pipeline/version'

Gem::Specification.new do |spec|
  spec.name          = "octopress-asset-pipeline"
  spec.version       = Octopress::Ink::LocalAssetPipeline::VERSION
  spec.authors       = ["Brandon Mathis"]
  spec.email         = ["brandon@imathis.com"]
  spec.summary       = %q{Combine and compress CSS and Sass, Javascript and Coffeescript to a single fingerprinted file.}
  spec.description   = %q{Combine and compress CSS and Sass, Javascript and Coffeescript to a single fingerprinted file.}
  spec.homepage      = "https://github.com/octopress/asset-pipeline"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "octopress"
  
  spec.add_runtime_dependency "octopress-ink"
end