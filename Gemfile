source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.0"

gem "pg", "~> 1.1"
gem "rails", "~> 6.1.1"

gem "bootsnap", ">= 1.4.4", require: false
gem "interactor"
gem "puma", "~> 5.0"
gem "strong_migrations"

group :development, :test do
  gem "brakeman"
  gem "bundler-audit"
  gem "byebug"
  gem "dotenv-rails"
  gem "factory_bot_rails"
  gem "ffaker"
  gem "rspec-rails"
  gem "rubocop", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rspec", require: false
end

group :development do
  gem "listen", "~> 3.3"
  gem "spring"
end

group :test do
  gem "database_cleaner-active_record"
  gem "email_spec"
  gem "simplecov", require: false
end
