require 'selenium-webdriver'
options = Selenium::WebDriver::Chrome::Options.new
options.add_argument('--start-maximized')
driver = Selenium::WebDriver.for :chrome, options: options

$customer_name = 'testaabc2'
$email = 'abcde1@testing.com'
$password = 'halo2019#world'

Given(/^I navigate to Amazon homepage$/) do
  driver.navigate.to "https://www.amazon.com/"
  sleep(1)
end

Given(/^I click on Start here button$/) do
  driver.find_element(:link_text=>'Start here.').click
  sleep(1)
end


Given(/^I enter name, email, and password$/) do
  driver.find_element(:id=>'ap_customer_name').click
  sleep(2)
  driver.find_element(:id=>'ap_customer_name').send_keys($customer_name)
  sleep(1)
  driver.find_element(:id=>'ap_email').click
  sleep(2)
  driver.find_element(:id=>'ap_email').send_keys($email)
  sleep(1)
  driver.find_element(:id=>'ap_password').click
  sleep(2)
  driver.find_element(:id=>'ap_password').send_keys($password)
  sleep(1)
  driver.find_element(:id=>'ap_password_check').click
  sleep(2)
  driver.find_element(:id=>'ap_password_check').send_keys($password)
  sleep(1)

end

And(/^I click Create your Amazon account button$/) do
  driver.find_element(:id=>'continue').click
  sleep(15)
end

Given(/^I navigate to Amazon homepage again$/) do
  driver.navigate.to "https://www.amazon.com/"
  sleep(1)
end

Given(/^I click on Start here button again$/) do
  driver.find_element(:link_text=>'Start here.').click
  sleep(1)
end


Given(/^I enter name, email that already in use, and password again$/) do
  driver.find_element(:id=>'ap_customer_name').click
  sleep(2)
  driver.find_element(:id=>'ap_customer_name').send_keys($customer_name)
  sleep(1)
  driver.find_element(:id=>'ap_email').click
  sleep(2)
  driver.find_element(:id=>'ap_email').send_keys($email)
  sleep(1)
  driver.find_element(:id=>'ap_password').click
  sleep(2)
  driver.find_element(:id=>'ap_password').send_keys($password)
  sleep(1)
  driver.find_element(:id=>'ap_password_check').click
  sleep(2)
  driver.find_element(:id=>'ap_password_check').send_keys($password)
  sleep(1)

end

And(/^I click Create your Amazon account button again$/) do
  driver.find_element(:id=>'continue').click
  sleep(15)
end
