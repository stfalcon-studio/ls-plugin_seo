Feature: ls-plugin_seo-plugins
  Test base functionality of ls-plugin_seo

  Scenario: See meta on homepage
    Given I am on "/"
    Then the response meta have:
      | name        | value                                                                                                                                                                                   |
      | description | Description your site.Sony MicroVault Mach USB 3.0 flash drive.iPad 3 rumored to come this March with quad-core chip and 4G LTE.Toshiba unveils 13.3-inch AT330 Android ICS 4.0 tablet. |
      | keywords    | site, google, internet, sony, flash, gadget, apple, ipad, gadget |

  Scenario: See meta on topic #3
    Given I am on "/blog/3.html"
    Then the response meta have:
      | name        | value  |
      | description | Sony MicroVault Mach USB 3.0 flash drive. Want more speeds and better protection for your data? The Sony MicroVault Mach flash USB 3.0 drive is what you |
      | keywords    | Sony MicroVault Mach USB 3.0 flash drive, sony, flash, gadget |

  Scenario: See meta on topic #2
    Given I am on "/blog/gadgets/2.html"
    Then the response meta have:
      | name        | value  |
      | description | iPad 3 rumored to come this March with quad-core chip and 4G LTE. Another rumor for the iPad 3 has surfaced with some details given by Bloomberg, claiming that the iPad 3 production |
      | keywords    | iPad 3 rumored to come this March with quad-core chip and 4G LTE, apple, ipad |

  Scenario: See meta on topic #1
    Given I am on "/blog/gadgets/1.html"
    Then the response meta have:
      | name        | value  |
      | description | Toshiba unveils 13.3-inch AT330 Android ICS 4.0 tablet. Toshiba is to add a new Android 4.0 ICS to the mass which is known as Toshiba AT330. The device |
      | keywords    | Toshiba unveils 13.3-inch AT330 Android ICS 4.0 tablet, gadget |
