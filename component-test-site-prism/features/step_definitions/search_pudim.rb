Dado('que eu esteja na tela de busca do google') do
    @search_pudim_page = SearchPudimPage.new
    @search_pudim_page.load
    @search_pudim_page.open_page?
end

E('fizer busca por {string}')  do |searchText|
    @search_pudim_page.search_input.set(searchText)
end

E('clicar na primeira receita') do 
    @search_pudim_page.click_first.click
end

Quando('clicar no botão de pesquisa do Google') do
    @search_pudim_page.search_button.click
end

Então('devo visualizar links de receitas de "Pudim"') do
    @search_pudim_page.wait_until_search_list_visible
    @search_pudim_page.wait_until_search_more_visible
end

Então('devo ver a receita de "Pudim" escolhida') do
    @search_pudim_page.wait_until_pudim_recipe_visible
end