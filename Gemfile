source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.4.1'

gem 'sass-rails', '~> 5.0'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'jbuilder', '~> 2.5'
gem 'uglifier', '>= 1.3.0'
gem 'faraday'
gem 'figaro'
gem 'rails', '~> 5.2.0'
gem 'puma', '~> 4.3'
gem 'pg', '>= 0.18', '< 2.0'

group :development, :test do
  gem 'factory_bot_rails'
  gem 'shoulda-matchers'
  gem 'rspec-rails'
  gem 'simplecov'
  gem 'capybara'
  gem 'launchy'
  gem 'webmock'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
