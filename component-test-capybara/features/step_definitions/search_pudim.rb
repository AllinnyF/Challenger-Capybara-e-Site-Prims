Dado('que eu esteja na tela de busca do google') do
    visit('/')
    @search_pudim_page = SearchPudimPage.new
    @search_pudim_page.open_page?
end

E('fizer busca por {string}')  do |searchText|
    @search_pudim_page.search(searchText)
end

E('clicar na primeira receita') do 
    @search_pudim_page.firstLink
end

Quando('clicar no botão de pesquisa do Google') do
    @search_pudim_page.click
end

Então('devo visualizar links de receitas de {string}') do |searchText|
    @search_pudim_page.seeAllRecipes
    @search_pudim_page.search(searchText)
    
end

Então('devo ver a receita de {string} escolhida') do |searchText|
    @search_pudim_page.recipesPudim(searchText)
end