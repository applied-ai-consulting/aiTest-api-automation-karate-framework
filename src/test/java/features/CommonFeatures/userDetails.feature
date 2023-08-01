Feature: User Details

  Background:
#    * def expectedOutput = read('file:src/test/resources/Test.json')
    * def expectedOutput = read('classpath:testData/Test.json')

  Scenario: request user 2 call test
    Given url baseUrl + '/api/users/2'
    When method GET
    Then status 200
    Then print response
    And match response == expectedOutput[0]

  Scenario: Execute Java Method
  * def output = Java.type('util.JavaUtilityMethods').randomAlphaNumeric(10)
  * print output

  Scenario Outline: Test with CSV Data
    * print 'id is :: ' + id + ' and username is :: ' + username + ' and password is :: ' + password
    Examples:
      | read('classpath:testData/Test.csv') |
