require 'selenium-webdriver'
options = Selenium::WebDriver::Chrome::Options.new
options.add_argument('--start-maximized')
driver = Selenium::WebDriver.for :chrome, options: options

$email = 'youremail@gmail.com'
$password = 'yourpassword'

Given(/^I navigate to Amazon homepage$/) do
  driver.navigate.to "https://www.amazon.com/"
  sleep(5)
end

Given(/^I click on login button$/) do
  el = driver.find_element(:id=>'nav-link-accountList')
  driver.action.move_to(el).click.perform
  sleep(2)
  driver.find_element(:link_text=>'Sign in').click
  sleep(3)
end

Given(/^I enter email with my email$/) do
  driver.find_element(:id=>'ap_email').click
  sleep(2)
  driver.find_element(:id=>'ap_email').send_keys($email)
  sleep(1)
end

Given(/^I click on Continue$/) do
  driver.find_element(:id=>'continue').click
  sleep(7)
end

Given(/^I enter my password$/) do
  driver.find_element(:id=>'ap_password').click
  sleep(2)
  driver.find_element(:id=>'ap_password').send_keys($password)
  sleep(1)
end

And(/^I click on Sign-In$/) do
  driver.find_element(:id=>'signInSubmit').click
  sleep(15)
end
