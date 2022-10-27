After do |scenario|
  if scenario.failed?
    page.driver.browser.manage.window.maximize
    page.driver.browser.save_screenshot("reports/#{scenario.name}.png")
    encoded_img = page.driver.browser.screenshot_as(:base64)
    embed("data:image/png;base64,#{encoded_img}",'image/png', scenario.name)
  end
  Capybara.current_session.driver.quit  
end

# After do |scenario|
#  Capybara.current_session.instance_variable_set(:@touched, false)
#  Capybara.save_path = "./failure_screenshots"
#  Capybara.current_session.driver.quit  
#end
