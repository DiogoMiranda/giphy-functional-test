require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'cucumber'
require 'rspec'
require 'site_prism'
require 'selenium-webdriver'
require 'pry'

browser_name = ENV['BROWSER'] || "CHROME"

puts '--- Test Environment Variables ---'
puts 'Browser            ' + browser_name
puts '---'



# Delete screenshots folder
# FileUtils.rm_rf("../giphy-functional-test/failure_screenshots")

# ignore WARNs
# Selenium::WebDriver.logger.ignore(:browser_options)

# Configure Capybara with defaults
Capybara.configure do |config|
  config.default_driver = :selenium
  Capybara.default_max_wait_time = 5
end

# Register Firefox
Capybara.register_driver :selenium do |app|
  options = {
      :js_errors => false,
  }
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end

# Register Chrome
Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end


#Capybara.register_driver :selenium_chrome do |app|
#  browser_options = Selenium::WebDriver::Chrome::Options.new
#  browser_options.add_argument('allow-insecure-localhost')  # Ignore TLS/SSL errors on localhost
#  browser_options.add_argument('ignore-certificate-errors') # Ignore certificate related errors
#  browser_options.add_argument('ignore-ssl-errors') # Ignore SSL errors
#  browser_options.add_argument('headless')
#  browser_options.add_argument('no-sandbox')
#  Capybara::Selenium::Driver.new(app, :browser => :chrome, options:browser_options)
#end


# Choose a driver to use
case browser_name.upcase
  when 'CHROME'
    Capybara.default_driver = :selenium_chrome
  when 'FF', 'FIREFOX'
     Capybara.default_driver = :selenium
  else
    raise("Browser '#{browser_name}' is not supported. Use Firefox, Chrome or Headless")
end
