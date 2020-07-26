require 'selenium-webdriver'
require 'test-unit'

class ShopifyFirstTest
    Selenium::WebDriver::Chrome::Service.driver_path = "C:\\Users\\athip\\Downloads\\chromedriver_win32\\chromedriver.exe"
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://www.shopify.com/"
    driver.manage.timeouts.implicit_wait = 10
    @login_link = driver.find_element(:xpath, "//*[@id='ShopifyMainNav']/ul[2]/li/a")
    @login_link.click
    @get_started = driver.find_element(:xpath, "//*[@id='body-content']/div[1]/div[2]/div/p/a")
    @get_started.click
    sleep(7)
end