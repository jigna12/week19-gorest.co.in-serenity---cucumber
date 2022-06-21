Feature: As a user I would like to verify to CRUD operation of the application
@Smoke
  Scenario: I create a new user on the application
    Given I am on homepage of the given application
    When I send a POST request to the application using a valid payload
    Then I get a valid status code 201 from the application

  Scenario: I read a newly created user from the application
    Given I am on homepage of the given application
    When I send a GET request to the application to read newly created user
    Then I get a valid status code 200 from the application
    And I verify if the new user created with correct details

  Scenario: I update a newly created user on the application
    Given I am on homepage of the given application
    When I send a PATCH request to the application using a valid payload
    Then I get a valid status code 200 from the application
    And I verify if the new user updated with correct details

  Scenario: I delete a newly created user from the application
    Given I am on homepage of the given application
    When I send a DELETE request to the application
    Then I get a valid status code 204 from the application
    And I verify if the new user deleted from the application

  Scenario: I get all users from the application
    Given I am on homepage of the given application
    When I send a GET request to the application to read all users
    Then I get a valid status code 200 from the application
    And I verify if the id 2351 has name "Samir Shukla"
    And I verify if the id 2351 had email "samir_shukla@schiller-wuckert.biz"
    And I verify if the all id has status "active"
    And I verify if the id 2351 has gender "male"
    And I verify if the id 2334 had gender "female"






