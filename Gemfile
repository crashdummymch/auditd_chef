# Encoding: UTF-8

source 'https://rubygems.org'

gem 'berkshelf', '= 4.3.5'
group :development do
  gem 'yard-chef'
  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-kitchen'
end

group :test do
  gem 'rake', '< 12'
  gem 'cane'
  gem 'countloc'
  gem 'rubocop', '= 0.39.0'
  gem 'foodcritic', '= 5'
  # TODO: guard-foodcritic has a dep conflict with Berkshelf 3
  # gem 'guard-foodcritic'
  gem 'rspec', '>= 3'
  gem 'chefspec', '~> 4.7'
  gem 'simplecov'
  gem 'simplecov-console'
  gem 'coveralls'
  gem 'fauxhai'
  gem 'test-kitchen', '= 1.4.2'
  gem 'kitchen-digitalocean', '>= 0.8.0'
  gem 'kitchen-vagrant'
  gem 'kitchen-ec2'
  gem 'listen', '< 3.1.0'
  gem 'activesupport', '< 5'
  gem 'buff-extensions', '= 1.0.0'
  gem 'rack', '~> 1.6'
  gem 'rspec_junit_formatter'
  gem 'busser'
  gem 'hashie', '< 3.5.0'
end

group :integration do
  gem 'serverspec', '>= 2'
  gem 'cucumber'
end

group :deploy do
  gem 'stove'
end

group :production do
  gem 'chef', '~> 12.5'
  gem 'omnijack', '~> 1.0'
end
gem 'hashie', '< 3.5.0'
