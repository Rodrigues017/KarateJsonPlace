Feature: Validar disponibilidade API JSONPlaceholder

Background:
    * def baseURL = 'https://jsonplaceholder.typicode.com'



@environmentHealth
Scenario: Verificar retorno de api
    Given url baseURL + '/users/1'
    When method get
    Then status 200

@smokeTest
Scenario: Verificar dados retornados de um usuário
     Given url baseURL + '/users/1'
     When method get
     Then status 200
     And match response.id == 1
     And match response.name == 'Leanne Graham'
     And match response.email == 'Sincere@april.biz'
     And match response.address.street == 'Kulas Light'
     And match response.address.suite == 'Apt. 556'
     And match response.address.city == 'Gwenborough'
     And match response.address.zipcode == '92998-3874'

     And match response.address.geo.lat == '-37.3159'
     And match response.address.geo.lng == '81.1496'

     And match response.phone == '1-770-736-8031 x56442'
     And match response.website == 'hildegard.org'
     And match response.company.name == 'Romaguera-Crona'
     And match response.company.catchPhrase == 'Multi-layered client-server neural-net'
     And match response.company.bs == 'harness real-time e-markets'


#Páginas de testes: https://api.nasa.gov/, https://swapi.dev/, https://jsonplaceholder.typicode.com/