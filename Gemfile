source "http://rubygems.org"     
gem "rails", "3.0.3"
gem "sqlite3-ruby", :require => "sqlite3"

if RUBY_VERSION < '1.9'
  gem "ruby-debug", ">= 0.10.3"
end


group :test do
  gem "rspec-rails", ">= 2.0.0.beta"
  gem "shoulda"
  gem "capybara", ">= 0.3.9"
  gem "webrat"
end

group :development do
  gem "bundler", "~> 1.0.0"
  gem "jeweler", "~> 1.5.0.pre3"
  gem "rcov", ">= 0"
end