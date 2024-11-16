# frozen_string_literal: true

require_relative 'lib/inexact_struct_dsl_compiler/version'

Gem::Specification.new do |spec|
  spec.name        = 'inexact-struct-dsl-compiler'
  spec.version     = InexactStructDslCompiler::VERSION
  spec.authors     = ['Paul Mannino']
  spec.email       = ['pmannino.code@gmail.com']
  spec.homepage    = 'https://github.com/paul-mannino/inexact-struct-dsl-compiler'
  spec.summary     = 'A Tapioca DSL compiler for T::InexactStruct'
  spec.description = 'A Tapioca DSL compiler that adds type-checking for T::InexactStruct\'s constructor'
  spec.license     = 'MIT'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage

  spec.required_ruby_version = '>= 3.0.0'

  spec.add_dependency 'tapioca', '>=0.13'
  spec.metadata['rubygems_mfa_required'] = 'true'
end
