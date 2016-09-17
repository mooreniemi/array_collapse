# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = 'array_collapse'
  spec.version       = '0.0.2'
  spec.authors       = ['Alex Moore-Niemi']
  spec.email         = ['moore.niemi@gmail.com']

  spec.summary       = 'Array#collapse'
  spec.description   = 'Like #flatten, but rejecting nils and allowing a block.'
  spec.homepage      = 'https://github.com/mooreniemi/array-collapse'
  spec.license       = 'MIT'

  spec.extensions = ['ext/array_collapse/extconf.rb']
  spec.require_paths = ['lib']
  spec.files         = [
    'LICENSE',
    'README.md',
    'lib/.gemkeep',
    'ext/array_collapse/extconf.rb',
    'ext/array_collapse/array_collapse.c',
  ]
  spec.test_files = Dir['spec/**/*_spec.rb']

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rake-compiler'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'pry'
end
