Feature: Verify authorization for APIs

  Background: 
    * def accessToken = unauthorized_user_login.responseHeaders['X-Auth-Token'][0]
    Given url evidence_review_url
    And header Authorization = 'Bearer '+accessToken

  @23204 @CheckPermission @GIR @Test @EvidenceReviewBackEnd
  Scenario: Validate API fails for invalid user
    And path '/annotations'
    * param findingSetId = 'findingsetid'
    When method GET
    Then status 403

  @23204 @CheckPermission @GIR @Test @EvidenceReviewBackEnd
  Scenario: Get all trials for given finding set id
    And path '/trials'
    And param findingSetId = 'findingsetid'
    When method GET
    Then status 403

  @23204 @CheckPermission @GIR @Test @EvidenceReviewBackEnd
  Scenario: Validate reordering of FS after patch
    And path '/annotations/'+'annotationID'
    And request {"rank": 233)}
    When method PATCH
    Then status 403

  @23204 @CheckPermission @GIR @Test @EvidenceReviewBackEnd
  Scenario: Validate number of findingsets from DB
    And path '/casedetails'
    And param runId = run_id
    When method GET
    Then status 403

  @23204 @CheckPermission @GIR @Test @EvidenceReviewBackEnd
  Scenario: Validate test case level result of evidence review
    And path '/case-test-results'
    And param runId = run_id
    When method get
    Then status 403

  @23204 @CheckPermission @GIR @Test @EvidenceReviewBackEnd
  Scenario: Validate test case level result of evidence review
    And path '/case-test-results/'+342342
    And request { "appendExecutiveSummary": "test" }
    When method PATCH
    Then status 403

  @23204 @CheckPermission @GIR @Test @EvidenceReviewBackEnd
  Scenario: Get all findingset data values for given runid
    And path '/findingsets'
    And param runId = run_id
    When method GET
    Then status 403

  @23204 @CheckPermission @GIR @Test @EvidenceReviewBackEnd
  Scenario: Validate reordering of FS after patch
    And path '/findingsets/'+'FindingSet_id'
    And request {"rank": 3423}
    When method PATCH
    Then status 403

  @23204 @CheckPermission @GIR @Test @EvidenceReviewBackEnd
  Scenario: Get Interpretation by findingSet
    And path '/interpretation'
    And param findingSetId = 'FindingSet_id'
    When method GET
    Then status 403

  @23204 @CheckPermission @GIR @Test @EvidenceReviewBackEnd
  Scenario: Patch interpretation text and verify updates made successfully
    And path '/interpretation'
    And param findingSetId = 'FindingSet_id'
    * request {"interpretationText": "Test"}
    When method PATCH
    Then status 403

  @23204 @CheckPermission @GIR @Test @EvidenceReviewBackEnd
  Scenario: Validate number of findingsets from DB
    And path '/report/'+run_id
    And param format = 'json'
    When method GET
    Then status 403

  @23204 @CheckPermission @GIR @Test @EvidenceReviewBackEnd
  Scenario: Post case Review status to a report while signing out
    When path '/signout'
    And param reportId = 165656
    When method GET
    Then status 403

  @23204 @CheckPermission @GIR @Test @EvidenceReviewBackEnd
  Scenario: Post case Review status to a report while signing out
    When path '/signout'
    And param reportId = 165656
    * def requestBody = {"reason":"Report is generated succesfully and is in Final status","userDisplayData":{"name":"uitest_auto_selenium","email":#(uname_uitest)},"reportStatus":"Final","reportStatusId":2}
    And request requestBody
    When method POST
    Then status 403