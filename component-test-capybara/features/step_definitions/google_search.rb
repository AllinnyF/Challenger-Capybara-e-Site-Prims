Dado('que esteja na tela de busca') do
    visit('/')
    @google_search_page = GoogleSearchPage.new
    @google_search_page.open_page?
end

Quando('fazer busca por {string}')  do |searchText|
    puts('fazer busca por {string}')
end


E('clicar no botão pesquisa Google') do
    puts('clicar no botão pesquisa Google')
end



E('deve visualizar links de receita de {string}') do |searchText|
    puts('deve visualizar links de receita de {string}')
end

