# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }
ruby '2.5.1'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'canonical-rails'
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'locale_kit'
gem 'meta-tags'
gem 'mysql2', '>= 0.4.4', '< 0.6.0'
gem 'niconico-mylist'
gem 'omniauth'
gem 'omniauth-twitter'
gem 'premailer-rails'
gem 'puma', '~> 3.11'
gem 'rack-attack'
gem 'rails', '~> 5.2.0'
gem 'rails-i18n'
gem 'ridgepoler-rails'
gem 'sass-rails', '~> 5.0'
gem 'sitemap_generator'
gem 'slim-rails'
gem 'turbolinks', '~> 5'
gem 'twitter'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'uglifier', '>= 1.3.0'

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'

  gem 'brakeman', require: false
  gem 'guard', require: false
  gem 'guard-bundler', require: false
  gem 'guard-process', require: false
  gem 'guard-rails', require: false
  gem 'guard-rspec', require: false
  gem 'letter_opener'
  gem 'parser', '~> 2.5.1.x', require: false
  gem 'rubocop', require: false
  gem 'slim_lint', require: false
  gem 'spring-commands-rspec', require: false
end

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'pry-byebug'
  gem 'pry-doc'
  gem 'pry-rails'
  gem 'rspec-rails'
end

group :test do
  gem 'capybara', '>= 2.15', '< 4.0'
  gem 'chromedriver-helper'
  gem 'database_rewinder'
  gem 'ffaker'
  gem 'rspec-power_assert'
  gem 'selenium-webdriver'
  gem 'simplecov', require: false
end
