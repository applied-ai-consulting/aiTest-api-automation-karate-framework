Feature: Verify user authentication for GIR api

@LoginAPIAuthentication @EvidenceReviewBackEnd @Test
   Scenario: Validate Login fails for invalid user
    Given url login_url
    And header X-Auth-Email = invalid_user
    And header X-Auth-Key = invalid_pwd
    And header X-Auth-Institution = Institution
    And header Content-Type = 'application/json'
    When method get
    Then status 401