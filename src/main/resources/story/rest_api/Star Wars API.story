Description: Test demoing VIVIDUS capabilities for REST API

Scenario: Verify Luke's eyes are blue
When I execute HTTP GET request for resource with URL `${swapi_site}`
Then `${responseCode}` is equal to `200`
Then JSON element value from context by JSON path `$.eye_color` is equal to `blue`
