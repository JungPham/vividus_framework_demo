Description: Test demoing VIVIDUS capabilities for Composite Steps
Meta:
@group KnowIssue

Lifecycle:
Examples:
/tables/locators/SignInPage.table

Scenario: Verify mark known issue in report
Given I am on a page with the URL 'https://courses.ultimateqa.com/users/sign_in'
When I enter `This test case is mark known issue in report` in field located `By.xpath(//*[@id="user[email]"])`
Then the text 'Displayed email format' exists
