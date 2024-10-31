@login
Feature: Login de usuario.
  Como tester, quiero ingresar con un usuario existente.

  Background:
    * url 'https://api.demoblaze.com'

  Scenario: Login con usuario y password correctos.
    Given path '/login'
    When request { "username":"Cristian Existente", "password":"@cont12345" }
    And method post
    Then status 200
    And match response contains 'Auth_token: '

  Scenario: Login con usuario incorrecto.
    Given path '/login'
    When request { "username":"Cristian NOExistente", "password":"@cont12345" }
    And method post
    Then status 200
    And match $.errorMessage == "User does not exist."

  Scenario: Login con password incorrecto.
    Given path '/login'
    When request { "username":"Cristian Existente", "password":"@cont12345incorrecta" }
    And method post
    Then status 200
    And match $.errorMessage == "Wrong password."