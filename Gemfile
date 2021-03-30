source 'https://rubygems.org'
ruby "2.4.1"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.4'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.12'
gem 'rack-cors', :require => 'rack/cors'
gem 'devise'
gem 'faker'
gem 'devise_token_auth'
gem 'will_paginate', '~> 3.1.0'
gem 'acts_as_votable', '~> 0.11.1'
gem 'rails_admin', '~> 1.2'
gem 'responders'
gem 'active_model_serializers'
gem 'bower-rails'
gem 'angular-rails-templates'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'
  gem 'pry'
  gem 'factory_bot_rails'
  gem 'simplecov', require: false
  gem 'capybara'
  gem 'shoulda-matchers'
  gem 'launchy'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'letter_opener'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
