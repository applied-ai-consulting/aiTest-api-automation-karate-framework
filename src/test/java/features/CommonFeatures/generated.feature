Feature: API Test 

  Scenario: Send GET Request
    Given url 'https://api.aitest.appliedaiconsulting.com/testrun/a9820172-4576-11ee-9554-ee360ee31421'
    And request { method: 'GET' }
    When method GET
    Then status 200

    And header Host = 'api.aitest.appliedaiconsulting.com'
    And header User-Agent = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:109.0) Gecko/20100101 Firefox/118.0'
    And header Accept = 'application/json, text/plain, */*'
    And header Accept-Language = 'en-US,en;q=0.5'
    And header Accept-Encoding = 'gzip, deflate, br'
    And header Authorization = 'Bearer eyJraWQiOiI0YVlDSDRzTVFmSG1UdlJWdXFQRE41Z0tweEw3WG14N0NzOWRQNlRYRlFnPSIsImFsZyI6IlJTMjU2In0.eyJhdF9oYXNoIjoieUtjX1Vxbnp3QkwzUWp3S3VfYmNnZyIsInN1YiI6IjBmNGVkMTY4LTFiMmQtNDBiZi1iZmU5LTg1YTE1N2RkM2RmYiIsImNvZ25pdG86Z3JvdXBzIjpbInVzLWVhc3QtMV96VWFsTWhlalVfR29vZ2xlIl0sImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwiaXNzIjoiaHR0cHM6XC9cL2NvZ25pdG8taWRwLnVzLWVhc3QtMS5hbWF6b25hd3MuY29tXC91cy1lYXN0LTFfelVhbE1oZWpVIiwiY29nbml0bzp1c2VybmFtZSI6Ikdvb2dsZV8xMDU3NzM2MTYzMTUzOTEwMTAzNjgiLCJnaXZlbl9uYW1lIjoiQXl1c2ggIiwicGljdHVyZSI6Imh0dHBzOlwvXC9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tXC9hXC9BQ2c4b2NKc2J2RFJDd3Nob0xNLTBaMDEtM1pCTTdkb0J4MzFkTzVhYlhtVjVGUUM9czk2LWMiLCJvcmlnaW5fanRpIjoiOGE2ZDllMGQtNGJlNC00NjRkLWFmYjEtZTA3YzAwNWVmNWE2IiwiYXVkIjoiZ3JvcG1jcWZiZjV2aDFtM25mbzUyZGo2diIsImlkZW50aXRpZXMiOlt7InVzZXJJZCI6IjEwNTc3MzYxNjMxNTM5MTAxMDM2OCIsInByb3ZpZGVyTmFtZSI6Ikdvb2dsZSIsInByb3ZpZGVyVHlwZSI6Ikdvb2dsZSIsImlzc3VlciI6bnVsbCwicHJpbWFyeSI6InRydWUiLCJkYXRlQ3JlYXRlZCI6IjE2OTA5MTg3NDQxMTYifV0sInRva2VuX3VzZSI6ImlkIiwiYXV0aF90aW1lIjoxNjk3NDM0NTY2LCJleHAiOjE2OTc0NDY2ODMsImlhdCI6MTY5NzQ0MzA4MywiZmFtaWx5X25hbWUiOiJSYXV0IiwianRpIjoiNWRlNDIwNzAtNTc1MC00MjQ0LWJiYWYtZjhjNzdjZjJjZTA4IiwiZW1haWwiOiJheXVzaEBhcHBsaWVkYWljb25zdWx0aW5nLmNvbSJ9.h-04WvrcSg-HZ0v3FLHqH3pvZuGPlEueMf4nwimJ2fs6bMmdeZZ4_Hwp9D92LRdI5dW9OQ158cK3aHxhL4p8q6TyYWsTo0ZADe2nn6TKrltGCAWk6jJjKBeI6AA__-shEOm926sc2GmNW4R3dJTmrWMa8tpjM6I2LfDAuJBOqzZF_BDUW1-4vOu1dDiKzm9nNzRdsMDymyT0fFJZJgONADip8G41ZvcBAEw0R0nPad3H7nTo52G7tWQWc7U7HvBNve4MmzO2wPy3JlkHyGBAnR8TQjECJWH78sgeFXSr_lA9qFTaPmFnCioJAMVPMMT5ko23HCtJ8yssDVynRa41Mg'
    And header Origin = 'https://app.aitest.appliedaiconsulting.com'
    And header Connection = 'keep-alive'
    And header Referer = 'https://app.aitest.appliedaiconsulting.com/'
    And header Sec-Fetch-Dest = 'empty'
    And header Sec-Fetch-Mode = 'cors'
    And header Sec-Fetch-Site = 'same-site'
    And header TE = 'trailers'


    And match _securityState == ''


  Scenario: Send GET Request
    Given url 'https://api.aitest.appliedaiconsulting.com/testrun_result/status/a9820172-4576-11ee-9554-ee360ee31421'
    And request { method: 'GET' }
    When method GET
    Then status 200

    And header Host = 'api.aitest.appliedaiconsulting.com'
    And header User-Agent = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:109.0) Gecko/20100101 Firefox/118.0'
    And header Accept = 'application/json, text/plain, */*'
    And header Accept-Language = 'en-US,en;q=0.5'
    And header Accept-Encoding = 'gzip, deflate, br'
    And header Authorization = 'Bearer eyJraWQiOiI0YVlDSDRzTVFmSG1UdlJWdXFQRE41Z0tweEw3WG14N0NzOWRQNlRYRlFnPSIsImFsZyI6IlJTMjU2In0.eyJhdF9oYXNoIjoieUtjX1Vxbnp3QkwzUWp3S3VfYmNnZyIsInN1YiI6IjBmNGVkMTY4LTFiMmQtNDBiZi1iZmU5LTg1YTE1N2RkM2RmYiIsImNvZ25pdG86Z3JvdXBzIjpbInVzLWVhc3QtMV96VWFsTWhlalVfR29vZ2xlIl0sImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwiaXNzIjoiaHR0cHM6XC9cL2NvZ25pdG8taWRwLnVzLWVhc3QtMS5hbWF6b25hd3MuY29tXC91cy1lYXN0LTFfelVhbE1oZWpVIiwiY29nbml0bzp1c2VybmFtZSI6Ikdvb2dsZV8xMDU3NzM2MTYzMTUzOTEwMTAzNjgiLCJnaXZlbl9uYW1lIjoiQXl1c2ggIiwicGljdHVyZSI6Imh0dHBzOlwvXC9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tXC9hXC9BQ2c4b2NKc2J2RFJDd3Nob0xNLTBaMDEtM1pCTTdkb0J4MzFkTzVhYlhtVjVGUUM9czk2LWMiLCJvcmlnaW5fanRpIjoiOGE2ZDllMGQtNGJlNC00NjRkLWFmYjEtZTA3YzAwNWVmNWE2IiwiYXVkIjoiZ3JvcG1jcWZiZjV2aDFtM25mbzUyZGo2diIsImlkZW50aXRpZXMiOlt7InVzZXJJZCI6IjEwNTc3MzYxNjMxNTM5MTAxMDM2OCIsInByb3ZpZGVyTmFtZSI6Ikdvb2dsZSIsInByb3ZpZGVyVHlwZSI6Ikdvb2dsZSIsImlzc3VlciI6bnVsbCwicHJpbWFyeSI6InRydWUiLCJkYXRlQ3JlYXRlZCI6IjE2OTA5MTg3NDQxMTYifV0sInRva2VuX3VzZSI6ImlkIiwiYXV0aF90aW1lIjoxNjk3NDM0NTY2LCJleHAiOjE2OTc0NDY2ODMsImlhdCI6MTY5NzQ0MzA4MywiZmFtaWx5X25hbWUiOiJSYXV0IiwianRpIjoiNWRlNDIwNzAtNTc1MC00MjQ0LWJiYWYtZjhjNzdjZjJjZTA4IiwiZW1haWwiOiJheXVzaEBhcHBsaWVkYWljb25zdWx0aW5nLmNvbSJ9.h-04WvrcSg-HZ0v3FLHqH3pvZuGPlEueMf4nwimJ2fs6bMmdeZZ4_Hwp9D92LRdI5dW9OQ158cK3aHxhL4p8q6TyYWsTo0ZADe2nn6TKrltGCAWk6jJjKBeI6AA__-shEOm926sc2GmNW4R3dJTmrWMa8tpjM6I2LfDAuJBOqzZF_BDUW1-4vOu1dDiKzm9nNzRdsMDymyT0fFJZJgONADip8G41ZvcBAEw0R0nPad3H7nTo52G7tWQWc7U7HvBNve4MmzO2wPy3JlkHyGBAnR8TQjECJWH78sgeFXSr_lA9qFTaPmFnCioJAMVPMMT5ko23HCtJ8yssDVynRa41Mg'
    And header Origin = 'https://app.aitest.appliedaiconsulting.com'
    And header Connection = 'keep-alive'
    And header Referer = 'https://app.aitest.appliedaiconsulting.com/'
    And header Sec-Fetch-Dest = 'empty'
    And header Sec-Fetch-Mode = 'cors'
    And header Sec-Fetch-Site = 'same-site'
    And header TE = 'trailers'


    And match _securityState == ''

