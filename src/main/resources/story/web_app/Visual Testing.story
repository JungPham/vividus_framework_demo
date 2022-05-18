Description: Test demoing VIVIDUS capabilities for Web Applications

Lifecycle:
Examples:
{transformer=FROM_LANDSCAPE}
|email_locator                  |By.xpath(//*[@id="user[email]"])                   |
|password_locator               |By.xpath(//*[@id="user[password]"])                |
|sign_in_button_locator         |By.xpath(//*[@class="form__button-group"]/input)   |

!-- Scenario: Verify visual testing using VIVIDUS with failed test
!-- Given I am on the main application page
!-- When I ESTABLISH baseline with `image_name`
!-- When I enter `example@epam.com` in field located `<email_locator>`
!-- When I enter `1234567890` in field located `<password_locator>`
!-- When I COMPARE_AGAINST baseline with `image_name`

Scenario: Verify visual testing using VIVIDUS with local image compare
Given I am on the main application page
When I enter `example@epam.com` in field located `<email_locator>`
When I enter `1234567890` in field located `<password_locator>`
When I COMPARE_AGAINST baseline with `local_image_name`
