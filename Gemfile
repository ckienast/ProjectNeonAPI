source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'pg'
gem 'puma', '~> 3.7'
gem 'rails', '~> 5.1.4'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'faker'
  gem 'rspec-rails', '~> 3.5'
end

group :development do
  gem 'awesome_print'
  gem 'better_errors'
  gem 'haml-lint'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rubocop'
end

group :test do
  gem 'database_cleaner'
  gem 'factory_girl_rails', '~> 4.0'
  gem 'shoulda-matchers', '~> 3.1'
end
