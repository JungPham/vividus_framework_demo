Description: Test demoing VIVIDUS capabilities for Web Applications

Lifecycle:
Examples:
{transformer=MERGING, mergeMode=columns, tables=/tables/locators/SignInPage.table;/tables/data/Users.table}

Scenario: Verify user cannot sign in with invalid email and password
Given I am on the main application page
When I enter `<email>` in field located `<email_locator>`
When I enter `<password>` in field located `<password_locator>`
When I click on element located `<sign_in_button_locator>`
!-- Examples:
!-- | email_tc                            | password_tc           |
!-- | email1@example.com                  | 0987654321            |
!-- | email2@example.com                  | 1234567890            |
