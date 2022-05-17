Description: Test demoing VIVIDUS capabilities for Composite Steps

Lifecycle:
Examples:
/tables/locators/SignInPage.table

Scenario: Verify composite steps work
Given I am on a page with the URL 'https://courses.ultimateqa.com/users/sign_in'
When I fill <userName>, <password> and click button Sign In in login page
When I wait `PT5S` for debug
Examples:
|userName                           |password                       |
|#{generate(Internet.emailAddress)} |#{generate(Internet.password)} |
