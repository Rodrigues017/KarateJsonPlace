Feature: Validar disponibilidade API JSONPlaceholders

Background:
    * def baseURL = 'https://jsonplaceholder.typicode.com'

@environmentHealth
Scenario: Validar de dados do cliente
    Given url baseURL + '/posts'
    And request { id: 1, name: 'Lucas Silva', email: 'lucas.silva@dominio.com.br' }
    When method post
    Then status 201

Scenario: Validar inserção de id
      Given url baseURL + '/posts'
      And request { id: '2' }
      When method post
      Then status 201

      #Finalizado