# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'easy_utils/version'

Gem::Specification.new do |s|
  s.name          = 'easy_utils'
  s.version       = EasyUtils::VERSION
  s.authors       = ['Cezar Almeida']
  s.email         = %w(cezar.almeidajr@gmail.com)

  s.summary       = 'A set of utilities for `easy stack` gems'
  s.homepage      = 'https://github.com/r4z3c/easy_utils'
  s.license       = 'MIT'

  s.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  s.bindir        = 'bin'
  s.executables   = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = %w(lib)

  s.add_dependency 'rails', '>=5'

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
end
