# frozen_string_literal: true

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'kitchen'
  s.version     = 0
  s.summary     = 'Personal recipe tracker'
  s.description = 'Kitchen is a personal recipe/cooking tracker that
aims to be a self-hosted way of collecting your favorite recipes and
how often you cook them.'

  s.required_ruby_version = '>= 2.7.0'

  s.author       = 'Brian Kubisiak'
  s.email        = 'brian@kubisiak.com'
  s.files        = Dir['bin/**/*', 'lib/**/*']
  s.require_path = 'lib'
  s.bindir       = 'bin'
  s.executables  = ['kitchen']

  s.add_dependency 'kramdown'
  s.add_dependency 'puma'
  s.add_dependency 'rails', '>= 6.1.0'
  s.add_dependency 'sqlite3'
  s.add_dependency 'tzinfo-data'
end
