require "bundler/setup"
require "capybara"
require "site_prism"
require "capybara/cucumber"
require "rspec/expectations"
 
Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 10
