# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pageflow/outline_navigation_bar/version'

Gem::Specification.new do |spec|
  spec.name          = 'pageflow-outline-navigation-bar'
  spec.version       = Pageflow::OutlineNavigationBar::VERSION
  spec.authors       = ['Codevise Solutions Ltd.']
  spec.email         = ['info@codevise.de']
  spec.summary       = 'Pageflow navigation widget.'
  spec.homepage      = 'https://github.com/codevise/pageflow-outline-navigation-bar'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.test_files    = spec.files.grep(%r{^spec/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'pageflow', ['>= 0.11', '< 13']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'

  # Semantic versioning rake tasks
  spec.add_development_dependency 'semmy', '~> 0.3.0'
end
