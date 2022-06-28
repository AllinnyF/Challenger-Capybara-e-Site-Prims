#language: pt
@search-pudim
@desktop
Funcionalidade: Busca no Google por Receita de Pudim

  Contexto:
    Dado que eu esteja na tela de busca do google

  Cenário: Deve buscar por receita de pudim
    E fizer busca por "pudim"
    Quando clicar no botão de pesquisa do Google
    Então devo visualizar links de receitas de "Pudim"

  Cenário: Ver a receita de Pudim
    E fizer busca por "pudim"
    Quando clicar no botão de pesquisa do Google
    E clicar na primeira receita
    Então devo ver a receita de "Pudim" escolhida