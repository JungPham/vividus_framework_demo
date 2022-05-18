Description: Test demoing VIVIDUS capabilities for Known Issue
Meta:
@group KnownIssue

Lifecycle:
Examples:
/tables/locators/SignInPage.table

Scenario: Verify mark known issue in report
Given I am on the main application page
When I enter `This test case is mark known issue in report` in field located `By.xpath(//*[@id="user[email]"])`
Then the text 'Displayed email format' exists
