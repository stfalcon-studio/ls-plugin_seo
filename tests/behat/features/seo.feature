Feature: ls-plugin_seo-plugins
  Test base functionality of ls-plugin_seo

  Scenario: See meta on homepage
    Given I am on "/"
    Then the response status code should be 200
    Then the response meta have:
      | name        | value                                                                                                                                                                                   |
      | description | Description your site.Sony MicroVault Mach USB 3.0 flash drive.iPad 3 rumored to come this March with quad-core chip and 4G LTE.Toshiba unveils 13.3-inch AT330 Android ICS 4.0 tablet. |
      | keywords    | site, google, internet, sony,flash,gadget, apple,ipad, gadget |

    Scenario: See meta on topic #3 (personal blog)
    Given I am on "/blog/3.html"
    Then the response status code should be 200
    Then the response meta have:
      | name        | value  |
      | description | Sony MicroVault Mach USB 3.0 flash drive. Want more speeds and better protection for your data? The Sony MicroVault Mach flash USB 3.0 drive is what you |
      | keywords    | Sony MicroVault Mach USB 3.0 flash drive, sony,flash,gadget |

  Scenario: See meta on topic #1 (public blog)
    Given I am on "/blog/gadgets/1.html"
    Then the response status code should be 200
    Then the response meta have:
      | name        | value  |
      | description | Toshiba unveils 13.3-inch AT330 Android ICS 4.0 tablet. Toshiba is to add a new Android 4.0 ICS to the mass which is known as Toshiba AT330. The device |
      | keywords    | Toshiba unveils 13.3-inch AT330 Android ICS 4.0 tablet, gadget |

  Scenario: See meta on public blogs
    Given I am on "/blog/"
    Then the response status code should be 200
    Then the response meta have:
      | name        | value  |
      | description | iPad 3 rumored to come this March with quad-core chip and 4G LTE.Toshiba unveils 13.3-inch AT330 Android ICS 4.0 tablet. |
      | keywords    | apple,ipad,gadget, |

  Scenario: See meta on personal blogs
    Given I am on "/personal_blog/"
    Then the response status code should be 200
    Then the response meta have:
      | name        | value  |
      | description | Description your site.Sony MicroVault Mach USB 3.0 flash drive. |
      | keywords    | site, google, internet,sony,flash,gadget |

  Scenario: See meta on tag personal page
    Given I am on "/tag/sony/"
    Then the response meta have:
      | name        | value  |
      | description | Sony MicroVault Mach USB 3.0 flash drive. |
      | keywords    | site, google, internet, sony,flash,gadget |

  Scenario: See meta on tag blog page
    Given I am on "/tag/gadget/"
    Then the response meta have:
      | name        | value  |
      | description | Sony MicroVault Mach USB 3.0 flash drive.Toshiba unveils 13.3-inch AT330 Android ICS 4.0 tablet. |
      | keywords    | site, google, internet, sony,flash,gadget, gadget |

  Scenario: See meta on profile page
    Given I am on "/profile/golfer/created/topics/"
    Then the response status code should be 200
    Then the response meta have:
      | name        | value  |
      | description | Sony MicroVault Mach USB 3.0 flash drive.iPad 3 rumored to come this March with quad-core chip and 4G LTE.Toshiba unveils 13.3-inch AT330 Android ICS 4.0 tablet.Description your site |
      | keywords    | sony,flash,gadget,apple,ipad,gadget,site, google, internet |