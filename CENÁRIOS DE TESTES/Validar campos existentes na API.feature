Feature: Validar campos existentes na API

Background:
    * def baseURL = 'https://jsonplaceholder.typicode.com'
#Páginas de testes: https://api.nasa.gov/, https://swapi.dev/, https://jsonplaceholder.typicode.com/

@environmentHealth
Scenario: Verificar resposta de api
    Given url baseURL + '/users/1'
    When method get
    Then status 200


@high-priority
Scenario: Validar se existe ID
     Given url baseURL + '/users/1'
     When method get
     Then status 200
     And match response contains { id: '#notnull'}
Scenario: Validar se existe name
    Given url baseURL + '/users/1'
    When method get
    Then status 200
    And match response contains { name: '#notnull'}
Scenario: Validar se existe username
    Given url baseURL + '/users/1'
    When method get
    Then status 200
    And match response contains { username: '#notnull'}

Scenario: Validar se existe campo email
    Given url baseURL + '/users/1'
    When method get
    Then status 200
    And match response contains { email: '#notnull'}

Scenario: Validar se existe campo address
    Given url baseURL + '/users/1'
    When method get
    Then status 200
    And match response contains { address: '#notnull'}

Scenario: Validar se existe campo street
    Given url baseURL + '/users/1'
    When method get
    Then status 200
    And match response.address.street != null

Scenario: Validar se existe campo suite
    Given url baseURL + '/users/1'
    When method get
    Then status 200
    And match response.address.suite != null

Scenario: Validar se existe campo city
    Given url baseURL + '/users/1'
    When method get
    Then status 200
    And match response.address.city != null

Scenario: Validar se existe campo zipcode
    Given url baseURL + '/users/1'
    When method get
    Then status 200
    And match response.address.zipcode != null

Scenario: Validar se existe campo geo
    Given url baseURL + '/users/1'
    When method get
    Then status 200
    And match response.address.geo != null

Scenario: Validar se existe campo lat
    Given url baseURL + '/users/1'
    When method get
    Then status 200
    And match response.address.geo.lat != null

Scenario: Validar se existe campo lng
    Given url baseURL + '/users/1'
    When method get
    Then status 200
    And match response.address.geo.lng != null