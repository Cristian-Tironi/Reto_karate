@registrar
Feature: Register nuevo usuario.
  Como tester, quiero consumir el api de demoblaze y registrar un nuevo usuario.

  Background:
    * url 'https://api.demoblaze.com'

  Scenario: Crear nuevo usuario.
    Given path '/signup'
    When request { "username":"Cristian Nuevo", "password":"@cont12345" }
    And method post
    Then status 200


  Scenario: Intentar crear usuario existente.
    Given path '/signup'
    When request { "username":"Cristian Existente", "password":"@cont12345" }
    And method post
    Then status 200
    And match $.errorMessage == "This user already exist."