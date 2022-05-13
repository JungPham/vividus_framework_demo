Description: Test demoing VIVIDUS capabilities for Meta Tag
Meta:
@group TestMeta

Lifecycle:
Examples:
{transformer=FROM_LANDSCAPE}
/tables/locators/SignInPage.table

Scenario: Verify Meta Tags with skip
Meta:
    @group Regression
    @skip
Given I am on a page with the URL 'https://courses.ultimateqa.com/users/sign_in'
When I enter `This test case cannot run` in field located `<email_locator>`
When I wait `PT5S` for debug

Scenario: Verify Meta Tags without skip
Meta:
    @group Regression
Given I am on a page with the URL 'https://courses.ultimateqa.com/users/sign_in'
When I enter `This test case is running` in field located `<email_locator>`
When I wait `PT5S` for debug
