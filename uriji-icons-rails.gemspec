require File.expand_path('lib/uriji-icons-rails/version', __dir__)
require 'date'

gemfiles = [
  Dir.glob('app/**/*'),
  Dir.glob('lib/**/*'),
  Dir.glob('LICENSE*'),
  Dir.glob('README*')
].flatten

testfiles = [
  Dir.glob('Rakefile'),
  Dir.glob('test/**/*')
].flatten

Gem::Specification.new do |s|
  s.name          = 'uriji-icons-rails'
  s.version       = UrijiIcons::Rails::VERSION
  s.date          = Date.today.to_s
  s.summary       = 'An asset gemification of the uriji-icons font library'
  s.description   = 'Provides the Uriji-Icons web fonts and stylesheets as a
                    Rails engine for use with the asset pipeline.'
  s.authors       = ['Carlos Serrada']
  s.email         = 'cserradag96@gmail.com'
  s.files         = gemfiles
  s.test_files    = testfiles
  s.require_paths = ['lib']
  s.homepage      = 'http://rubygems.org/gems/uriji-icons-rails'
  s.licenses      = ['MIT', 'OFL-1.1']

  s.add_dependency 'railties', '>= 3.2', '< 6.0'
  s.add_development_dependency 'activesupport', '~> 5.0.0', '>= 5.0.0'
  s.add_development_dependency 'sass-rails', '~> 5.0.0', '>= 5.0.0'
  s.required_ruby_version = '>= 2.1'
end
