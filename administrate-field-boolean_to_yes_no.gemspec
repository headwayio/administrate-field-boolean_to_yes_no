# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

GEM_NAME = 'boolean_to_yes_no'
FULL_GEM_NAME = "administrate-field-#{GEM_NAME}"

Gem::Specification.new do |gem|
  gem.name          = FULL_GEM_NAME
  gem.version       = '0.1.0'
  gem.authors       = ['Jon Kinney']
  gem.email         = ['jon@headway.io']

  gem.summary       = %(Custom Administrate field #{GEM_NAME})
  gem.description   = gem.summary
  gem.homepage      = "http://github.com/headwayio/#{FULL_GEM_NAME}"
  gem.license       = 'MIT'

  gem.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  gem.bindir        = 'exe'
  gem.executables   = gem.files.grep(%r{^exe/}) { |f| File.basename(f) }
  gem.require_paths = ['lib']

  gem.add_development_dependency 'bundler', '~> 1.14'
  gem.add_development_dependency 'rake', '~> 10.0'
  gem.add_development_dependency 'rspec', '~> 3.0'
  gem.add_dependency 'administrate', '~> 0.7'
  gem.add_dependency 'rails', '~> 6.0'
end
