Description: Test demoing VIVIDUS capabilities for Composite Steps
Meta:
@group KnowIssue

Lifecycle:
Examples:
/tables/locators/SignInPage.table

Scenario: Verify mark know issue in report
Given I am on a page with the URL 'https://courses.ultimateqa.com/users/sign_in'
When I enter `This test case is mark know issue in report` in field located `<email_locator>`
When I wait `PT5S` for debug
