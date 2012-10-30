
Feature: ls-plugin-seo-plugins
  Test base functionality of ls-seo-plugins

#Then print last response
#Then I should have match in response ".*<meta name=\"description\" content=\".*Description your site\..*\""
#And I should have match in response ".*<meta name=\"description\" content=\".*iPad 3 rumored to come this March with quad-core chip and 4G LTE\..*\""
#And I should have match in response ".*<meta name=\"description\" content=\".*Toshiba unveils 13\.3-inch AT330 Android ICS 4\.0 tablet\..*\""
#And I should have match in response ".*<meta name=\"description\" content=\".*Toshiba unveils 13\.3-inch AT330 Android ICS 4\.0 tablet\..*\""

  Scenario: See seo plugins homepage
    Given I am on "/"
    Then the response should contain "<meta name=\"description\" content=\"Description your site.Sony MicroVault Mach USB 3.0 flash drive.iPad 3 rumored to come this March with quad-core chip and 4G LTE.Toshiba unveils 13.3-inch AT330 Android ICS 4.0 tablet.\">"
    And the response should contain "<meta name=\"keywords\" content=\"site, google, internet, sony, flash, gadget, apple, ipad, gadget\">"

  Scenario: See seo plugins topic #3
    Given I am on "/blog/3.html"
    Then the response should contain "<meta name=\"description\" content=\"Sony MicroVault Mach USB 3.0 flash drive. Want more speeds and better protection for your data? The Sony MicroVault Mach flash USB 3.0 drive is what you\">"
    And the response should contain "<meta name=\"keywords\" content=\"Sony MicroVault Mach USB 3.0 flash drive, sony, flash, gadget\">"


  Scenario: See seo plugins topic #2
    Given I am on "/blog/gadgets/2.html"
    Then the response should contain "<meta name=\"description\" content=\"iPad 3 rumored to come this March with quad-core chip and 4G LTE. Another rumor for the iPad 3 has surfaced with some details given by Bloomberg, claiming that the iPad 3 production\">"
    And the response should contain "<meta name=\"keywords\" content=\"iPad 3 rumored to come this March with quad-core chip and 4G LTE, apple, ipad\">"

  Scenario: See seo plugins topic #1
    Given I am on "/blog/gadgets/1.html"
    Then the response should contain "<meta name=\"description\" content=\"Toshiba unveils 13.3-inch AT330 Android ICS 4.0 tablet. Toshiba is to add a new Android 4.0 ICS to the mass which is known as Toshiba AT330. The device\">"
    And the response should contain "<meta name=\"keywords\" content=\"Toshiba unveils 13.3-inch AT330 Android ICS 4.0 tablet, gadget\">"