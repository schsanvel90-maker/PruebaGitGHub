
  Feature: prueba karate sesion1

    Background:
      * url 'https://pokeapi.co/api/v2/pokemon/ditto'
      * configure  ssl  =  true

    @sesion1
    Scenario:  onbtener status code 200
        When method GET
        Then status 200
        * print response
        * match response.abilities[0].ability.name == "#string"
       * match response.abilities[1].ability.url contains  "https"
      * match response.base_experience == 101
      * match  each response.abilities[*].ability.name == "#string"


    Scenario:  onbtener status code 204
      Given  header Autorization = ' 30565ed7famshad0dd9fd27c622bp10e176jsn15c33724a1da'
      * param q = 'Dogecoin'
      * param count = '20'
      * param type = 'Top'
      * param  safe_search = true
      * path id = 'sdfs'
      When method GET
      Then status 200
      * print response

