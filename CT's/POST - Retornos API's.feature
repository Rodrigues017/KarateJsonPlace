Feature: Busca de cadastro por ID's

Background:
    * url 'https://petstore.swagger.io/v2'

Scenario: Validar status para ID inexistente
      Given path 'pet', '12'
      When method get
      Then status 404
      And match response contains { message: "Pet not found" }

Scenario: Validar status para valor de ID vazio
      Given path 'pet', ''
      When method get
      Then status 405

Scenario: Validar status para valor de ID null
      Given path 'pet', 'null'
      When method get
      Then status 404