source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'activeadmin'
gem 'activeadmin-select2', git:'https://github.com/mfairburn/activeadmin-select2'
gem 'activemodel-serializers-xml', git: 'https://github.com/rails/activemodel-serializers-xml'
gem 'active_skin'
gem 'bitly'
gem 'bootstrap', '~> 4.0.0.alpha6'
gem 'cancancan'
gem 'carrierwave'
gem 'cloudinary'
gem 'coffee-rails'
gem 'devise'
gem 'draper', git: 'https://github.com/drapergem/draper'
gem 'figaro'
gem 'font-awesome-sass'
gem 'font-awesome-rails'
gem 'friendly_id'
gem 'haml-lint'
gem 'haml-rails'
gem 'heroku_secrets', github: 'alexpeattie/heroku_secrets'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'mini_magick'
gem 'omniauth'
gem 'omniauth-github'
gem 'omniauth-google-oauth2'
gem 'omniauth-facebook'
gem 'omniauth-twitter'
gem 'overcommit'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'pundit'
gem 'rack-rewrite'
gem 'rails', '~> 5.1.2'
gem 'rails_best_practices'
gem 'sass'
gem 'sass-rails', '~> 5.0'
gem 'select2-rails'
gem 'tether-rails'
gem 'therubyracer'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'letter_opener'
  gem 'pry'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'rails-controller-testing'
  gem 'rspec-rails', '~> 3.5'
  gem 'rubocop'
  gem 'fuubar'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '~> 2.13'
  gem 'database_cleaner'
  gem 'poltergeist'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers'
end
