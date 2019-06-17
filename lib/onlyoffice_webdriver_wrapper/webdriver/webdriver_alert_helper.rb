# frozen_string_literal: true

module OnlyofficeWebdriverWrapper
  # Methods for working with alerts
  module WebdriverAlertHelper
    def alert_confirm
      @driver.switch_to.alert.accept
    rescue StandardError
      Selenium::WebDriver::Error::NoAlertOpenError
    end

    # Check if alert exists
    # @return [True, false]
    def alert_exists?
      @driver.switch_to.alert.text
      true
    rescue Selenium::WebDriver::Error::NoAlertOpenError, Selenium::WebDriver::Error::NoSuchAlertError
      false
    end

    # Get alert text
    # @return [String] text inside alert
    def alert_text
      @driver.switch_to.alert.text
    end
  end
end
