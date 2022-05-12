Description: Test demoing VIVIDUS capabilities for Web Applications

Lifecycle:
Examples:
{transformer=FROM_LANDSCAPE}
|email_locator                  |By.xpath(//*[@id="user[email]"])                   |
|password_locator               |By.xpath(//*[@id="user[password]"])                |
|sign_in_button_locator         |By.xpath(//*[@class="form__button-group"]/input)   |

Scenario: Verify user cannot sign in with invalid email and password
Given I am on a page with the URL 'https://courses.ultimateqa.com/users/sign_in'
When I ESTABLISH baseline with `image_name`
When I enter `#{generate(Internet.password)}` in field located `<email_locator>`
When I enter `#{generate(Internet.password)}` in field located `<password_locator>`
When I COMPARE_AGAINST baseline with `image_name`
When I click on element located `<sign_in_button_locator>`
