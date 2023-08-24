Feature: User Details

  Background:
    * def expectedOutput = read('classpath:testData/Output.json')
    And header X-Auth-Token = 'bearer token'
    And header Content-Type = 'application/json'

  Scenario: request user 2 call test
    Given url baseUrl + '/api/users/2'
    When method GET
    Then status 200
    Then print response
    And match response == expectedOutput[0]

  Scenario: Execute Java Method
  * def output = Java.type('util.JavaUtilityMethods').randomAlphaNumeric(10)
  * print output

  Scenario Outline: Data driven Test with CSV File Data
    * print 'id is :: ' + id + ' and username is :: ' + username + ' and password is :: ' + password
    Examples:
      | read('classpath:testData/Test.csv') |

  Scenario Outline: Data driven Test Examples
    * print 'Username is :: <username> and password is :: <password>'
    Examples:
      | username  | password  |
      | username1 | password1 |
      | username2 | password2 |
      | username3 | password3 |

  Scenario: Updating value of keys in request body
    * def requestBody = read('classpath:testData/RequestBody.json')
    * print 'Request Body before updating details is :: ', requestBody
    * set requestBody.email = 'updatedemail@reqres.in'
    * print 'Request Body after updating details is :: ', requestBody

  Scenario: Run another scenario from this scenario
    * def getBearerTokenOutput = call read('getBearerToken.feature@GetBearerToken')
    * print getBearerTokenOutput.BearerToken

  Scenario: Applying validations
    * def actualResponse = read('classpath:testData/actualResponse.json')
    * def expectedResponse = read('classpath:testData/expectedResponse.json')
    * print actualResponse
    * print expectedResponse
    * match actualResponse == expectedResponse
    * match actualResponse[0] == {"data": {"id": 2,"email": "janet.weaver@reqres.in","first_name": "Janet","last_name": "#ignore","avatar": "https://reqres.in/img/faces/2-image.jpg"},"support": {"url": "https://reqres.in/#support-heading","text": "To keep ReqRes free, contributions towards server costs are appreciated!"}}
    * match actualResponse[0].data contains {"email": "janet.weaver@reqres.in"}
    * match actualResponse[0].data !contains {"email": "john.doe@reqres.in"}
    * match actualResponse contains deep { data: { email: "janet.weaver@reqres.in" } }
    * def expectedEmails = ["janet.weaver@reqres.in", "emma.wong@reqres.in"]
    * def actualEmails = get actualResponse[*].data.email
    * match actualEmails contains expectedEmails
    * match actualResponse[0].data.email == '#string'
    * match each actualResponse[*].support.url == "https://reqres.in/#support-heading"

  Scenario: Run cmd commands
    * def command = "cmd /c echo Hello, this is a test > newfile.txt"
    * def cmdOutput = karate.exec(command)
