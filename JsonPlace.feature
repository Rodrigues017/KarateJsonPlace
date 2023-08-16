Feature: Validar disponibilidade API JSONPlaceholder

Background:
    * def baseURL = 'https://jsonplaceholder.typicode.com'
Scenario: Verificar retorno de api
    Given url baseURL + '/users/1'
    When method get
    Then status 200
Scenario: Verificar detalhes de pessoa
    Given url baseURL + '/users/1'
    When method get
    Then status 200
    And match response.id == 1
    And match response.name == 'Leanne Graham'
    And match response.email == 'Sincere@april.biz'