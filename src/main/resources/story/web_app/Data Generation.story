Description: Test demoing VIVIDUS capabilities for Data Generation

Lifecycle:
Examples:
/tables/locators/SignInPage.table

Scenario: Verify data generation
Given I am on a page with the URL 'https://courses.ultimateqa.com/users/sign_in'
When I enter `#{generate(PhoneNumber.cellPhone)}` in field located `<email_locator>`
When I wait `PT5S` for debug
When I enter `#{generateDate(P1D, dd-MMM-yyyy)}` in field located `<email_locator>`
When I wait `PT5S` for debug
When I enter `#{generate(Internet.emailAddress)}` in field located `<email_locator>`
When I wait `PT5S` for debug
When I enter `#{generate(Internet.password)}` in field located `<password_locator>`
When I click on element located `<sign_in_button_locator>`
