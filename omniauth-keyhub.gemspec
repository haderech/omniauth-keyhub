require File.expand_path('../lib/omniauth-keyhub/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name        = 'omniauth-keyhub'
  gem.version     = OmniAuth::Keyhub::VERSION
  gem.license     = 'Apache-2.0'
  gem.summary     = %q(OmniAuth strategy for Keyhub.)
  gem.description = %q(OmniAuth strategy for Keyhub.)
  gem.authors     = ['Haderech']
  gem.homepage    = 'https://github.com/haderech/omniauth-keyhub'

  gem.files         = `git ls-files`.split("\n")
  gem.require_paths = ['lib']

  gem.add_dependency 'omniauth', '~> 2.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.8'
end
