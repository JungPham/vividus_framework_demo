Description: Test demoing VIVIDUS capabilities for Web Applications

Lifecycle:
Examples:
{transformer=MERGING, mergeMode=columns, tables=/tables/locators/SignInPage.table;/tables/data/Users.table}

Scenario: Verify user cannot sign in with invalid email and password
Given I am on a page with the URL 'https://courses.ultimateqa.com/users/sign_in'
When I enter `<email>` in field located `<email_locator>`
When I enter `<password>` in field located `<password_locator>`
When I click on element located `<sign_in_button_locator>`
