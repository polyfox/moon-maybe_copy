require 'date'

Gem::Specification.new do |s|
  s.name        = 'moon-maybe_copy'
  s.summary     = 'Moon Maybe Copy package.'
  s.description = 'Defines #maybe_dup'
  s.homepage    = 'https://github.com/polyfox/moon-maybe_copy'
  s.email       = 'mistdragon100@gmail.com'
  s.version     = '1.1.1'
  s.platform    = Gem::Platform::RUBY
  s.date        = Time.now.to_date.to_s
  s.license     = 'MIT'
  s.authors     = ['Blaž Hrastnik', 'Corey Powell']

  s.add_development_dependency 'rake',              '>= 11.0'
  s.add_development_dependency 'yard',              '~> 0.9.12'
  s.add_development_dependency 'rspec',             '~> 3.2'
  s.add_development_dependency 'codeclimate-test-reporter'
  s.add_development_dependency 'simplecov'

  s.require_path = 'lib'
  s.files = []
  s.files += Dir.glob('lib/**/*.{rb,yml}')
  s.files += Dir.glob('spec/**/*')
end
