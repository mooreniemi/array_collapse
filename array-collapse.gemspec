# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = 'array-collapse'
  spec.version       = '0.0.1'
  spec.authors       = ['Alex Moore-Niemi']
  spec.email         = ['moore.niemi@gmail.com']

  spec.summary       = 'Array#collapse'
  spec.description   = 'Like #flatten, but rejecting nils and allowing a block.'
  spec.homepage      = 'https://github.com/mooreniemi/array-collapse'
  spec.license       = 'MIT'

  spec.files         = [
    'ext/array-collapse/extconf.rb',
    'ext/array-collapse/array-collapse.c',
    'README.md',
    'LICENSE',
    'lib/.gemkeep'
  ]
  spec.test_files = Dir['spec/**/*_spec.rb']
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
