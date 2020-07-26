require 'selenium-webdriver'
require 'test-unit'

class ShopifyTestUnit < Test::Unit::TestCase

    def setup
        Selenium::WebDriver::Chrome::Service.driver_path = Dir.home + "\\Downloads\\chromedriver_win32\\chromedriver.exe"
        @driver = Selenium::WebDriver.for :chrome
        @url =  "https://www.shopify.com/"
        @driver.manage.timeouts.implicit_wait = 10
    end
    def test_shopify
        @driver.get (@url)
        @login_link = @driver.find_element(:xpath, "//*[@id='ShopifyMainNav']/ul[2]/li/a")
        @login_link.click
        @get_started = @driver.find_element(:xpath, "//*[@id='body-content']/div[1]/div[2]/div/p/a")
        @get_started.click
        sleep(7)
        assert_equal("Sign up for Shopify - Free 14-day trial", @driver.title)
    end
end
