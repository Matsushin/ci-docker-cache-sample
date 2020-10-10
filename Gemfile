source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

gem 'rails', '~> 6.0.3', '>= 6.0.3.2'
gem 'mysql2', '>= 0.4.4'
gem 'puma', '~> 4.1'
gem 'devise'
gem 'active_interaction'
gem 'active_model_serializers', '~> 0.10.0'
gem 'seed-fu'
gem 'carrierwave'
gem 'fog-aws'
gem 'aws-sdk-s3'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'combine_pdf'
gem 'rubyXL'
gem 'ransack'
gem 'pagy'
gem 'pundit'
gem 'activerecord-import'
gem 'faraday'
gem 'config'
gem 'active_hash'
gem 'holiday_jp'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'factory_bot_rails'
  gem 'rspec-rails'
  gem 'rspec_junit_formatter'
  gem 'gimei'
  gem 'faker'
  gem 'rails-erd'
  gem 'database_cleaner'
  gem 'bullet'
  gem 'dotenv-rails'
end

group :development do
  gem 'annotate'
  gem 'listen', '~> 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

