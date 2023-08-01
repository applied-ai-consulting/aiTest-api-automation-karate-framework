Feature: Get Bearer Token
Background:
    Given url login_url
    * def secureDetails = Java.type('util.SecureDetails')

  @uitest_user_login
  Scenario: Get Bearer Token for uitest user
    * def key = new secureDetails().getDecryptedString(password_uitest)
    And header X-Auth-Email = uname_uitest
    And header X-Auth-Key = key
    And header X-Auth-Institution = Institution
    And header Content-Type = 'application/json'
    When method get
    Then status 200
    * def accessToken = responseHeaders['X-Auth-Token'][0]
    * def accessToken = responseHeaders['X-Auth-Token'][0]
    * def javaUtilityMethods = Java.type('util.JavaUtilityMethods')
    * def result = new javaUtilityMethods().saveBearerToken(accessToken,Institution)
    
     @unauthorized_user_login @ignore
   Scenario: Get Bearer Token for unauthorized user
    And header X-Auth-Email = UnAuthorized_user
    And header X-Auth-Key = new secureDetails().getDecryptedString(UnAuthorized_password)
    And header X-Auth-Institution = Institution
    And header Content-Type = 'application/json'
    When method GET
    Then status 200
	 * def accessToken = responseHeaders['X-Auth-Token'][0]

  @reportviewer_user_login
  Scenario: Get Bearer Token for report viewer user
    * def secureDetails = Java.type('util.SecureDetails')
    * def key = new secureDetails().getDecryptedString(password_reportViewer)
    Given url login_url
    And header X-Auth-Email = uname_reportViewer
    And header X-Auth-Key = key
    And header X-Auth-Institution = Institution
    And header Content-Type = 'application/json'
    When method get
    Then status 200
    * def accessToken = responseHeaders['X-Auth-Token'][0]
    * def javaUtilityMethods = Java.type('util.JavaUtilityMethods')
    * def result = new javaUtilityMethods().saveBearerToken(accessToken,'ReportViewerUser')

  @sequencetechnician_user_login
  Scenario: Get Bearer Token for sequence technician user
    * def secureDetails = Java.type('util.SecureDetails')
    * def key = new secureDetails().getDecryptedString(password_sequenceTechnician)
    Given url login_url
    And header X-Auth-Email = uname_sequenceTechnician
    And header X-Auth-Key = key
    And header X-Auth-Institution = Institution
    And header Content-Type = 'application/json'
    When method get
    Then status 200
    * def accessToken = responseHeaders['X-Auth-Token'][0]

  @otherinstitution_user_login
  Scenario: Get Bearer Token for other institution user
    * def secureDetails = Java.type('util.SecureDetails')
    * def key = new secureDetails().getDecryptedString(password_otherInstitutionUser)
    Given url login_url
    And header X-Auth-Email = uname_otherInstitutionUser
    And header X-Auth-Key = key
    And header X-Auth-Institution = other_Institution
    And header Content-Type = 'application/json'
    When method get
    Then status 200
    * def accessToken = responseHeaders['X-Auth-Token'][0]
    * def javaUtilityMethods = Java.type('util.JavaUtilityMethods')
    * def result = new javaUtilityMethods().saveBearerToken(accessToken,'OtherInstitutionUser')

  @GetBearerTokenForDesiredInstitution
  Scenario: Get Bearer Token for api test user
    * def secureDetails = Java.type('util.SecureDetails')
    * def key = new secureDetails().getDecryptedString(password_uitest)
    Given url login_url
    And header X-Auth-Email = uname_uitest
    And header X-Auth-Key = key
    And header X-Auth-Institution = Institution
    And header Content-Type = 'application/json'
    When method get
    Then status 200
    * def accessToken = responseHeaders['X-Auth-Token'][0]
    * def javaUtilityMethods = Java.type('util.JavaUtilityMethods')
    * def result = new javaUtilityMethods().saveBearerToken(accessToken,Institution)