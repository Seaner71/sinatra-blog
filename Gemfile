# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gem 'sinatra'
gem 'sinatra-reloader'
gem 'rspec'
gem 'rack'
gem 'rack-test'
gem 'faker'

# active record dependencies
gem 'activerecord'
gem 'sinatra-activerecord'

gem 'rake'
group :development, :test do
  gem 'sqlite3'
end
group :production do
  gem 'pg'
end
