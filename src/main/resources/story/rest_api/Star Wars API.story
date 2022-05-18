Description: Test demoing VIVIDUS capabilities for REST API

Scenario: Verify Luke's eyes are blue
When I send HTTP GET to the relative URL '/people/1/'
Then `${responseCode}` is equal to `200`
Then JSON element value from context by JSON path `$.eye_color` is equal to `blue`
