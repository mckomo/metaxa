# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'metaxa/version'

Gem::Specification.new do |spec|
  spec.name          = 'metaxa'
  spec.version       = Metaxa::VERSION
  spec.authors       = ['Mckomo']
  spec.email         = ['mckomo@gmail.com']

  spec.summary       = 'Introduce dynamic variables in the main scope'
  spec.homepage      = 'https://github.com/mckomo/metaxa'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`
                       .split("\x0")
                       .reject { |f| f.match(%r{^(test|spec|features)/}) }
                       
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'httparty', '~> 0.14'
  spec.add_development_dependency 'test-unit', '~> 3.2'
  spec.add_development_dependency 'colorize', '~> 0.7'
  spec.add_development_dependency 'pry', '~> 0.10'
  spec.add_development_dependency 'activesupport', '~> 5.0'
  spec.add_development_dependency 'rubocop', '~> 0.41'
end
