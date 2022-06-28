#language: pt
@search-cep
@desktop
Funcionalidade: Busca por CEP

  Contexto:
    Dado que eu acesse a API de busca de cep

  Cenário: Deve buscar pelo CEP
    E devo visualizar json objects
    E status code 200
    Quando busco pelo cep "01001000"
    Então devo visualizar as informações do cep "01001-000"
    E o endereço com o o logradouro "Praça da Sé", o bairro "Sé"
    E a cidade de "São Paulo" no estado de "SP"