source 'https://rubygems.org'
ruby '2.4.0'

gem 'rails', '~> 5.0.2'
gem 'pg', '~> 0.19.0' # User Postgresql as the database for Active Record
gem 'puma', '~> 4.3.11' # Use Puma as the app server

gem 'bootstrap-sass', '~> 3.3.6' # Use twitter bootstrap (with sass)
gem 'sass-rails', '~> 5.0' # Use SCSS for stylesheets
gem 'compass-rails', '~> 3.0.2' # Use compass for SCSS mixins

gem 'uglifier', '>= 1.3.0' # Use Uglifier as compressor for JavaScript assets

gem 'jquery-rails', '~> 4.2.1' # Use jquery as the JavaScript library
gem 'turbolinks', '~> 5' # Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks

gem 'jbuilder', '~> 2.5' # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'figaro', '~> 1.1.1' # Use for managing environment variables. Works nicely with Heroku too.
gem 'redcarpet', '~> 3.2.3' # Allows for markup formatting in text.
gem 'devise', '~> 4.2.0' # Use devise for user authentication and omniauth
#gem 'parslet', :git => 'https://github.com/kschiess/parslet' # i thought getting the most recent changes might fix the malformed ingredient error issue
gem 'ingreedy' # parses block ingredient strings into individual ingredients
gem 'ruby-units' # allows summation and subtraction of differing units, e.g., pounds and ounces


gem 'rollbar'

group :development, :test do
  gem 'byebug', '~> 9.0.6', platform: :mri # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'rspec-rails', '~> 3.5.2' # Use rspec for testing
  gem 'rails-controller-testing'
  gem 'capybara', '~> 2.10.1' # Use capybara for plain language testing
  gem 'factory_girl_rails', '~> 4.7.0' # Use factory_girl_rails to generate data for tests
  gem 'database_cleaner', '~> 1.5.3' # Use database_cleaner for maintaining a clean test database on each run
  gem 'guard-rspec', '~> 4.7.3' # watcher for auto-running tests
  gem 'rb-readline', '~> 0.5.3' #add inline readline support for guard
  gem 'terminal-notifier-guard', '~> 1.7.0' # add mac os x notifications on guard runs. be sure to brew install terminal-notifier
  gem 'email_spec', '~> 2.1.0' # adds matchers for various email tests
  gem 'pry'
  gem 'pry-nav'
  gem 'pry-stack_explorer'
end

group :development do
  gem 'web-console', '~> 3.3.1' # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.

  gem 'listen', '~> 3.0.5'

  gem 'letter_opener', '~> 1.4.1' # Use letter-opener to view sent emails in browser instead of actually sending them

  gem 'spring', '~> 2.0.0' # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'better_errors', '~> 2.1.1' # better error pages for rack apps
  gem 'binding_of_caller', '~> 0.7.2' # needed for advanced better_errors features
end
