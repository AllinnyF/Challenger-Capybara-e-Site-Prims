Dado('que eu acesse a API de busca de cep') do
    @search_cep_api = ViaCepApi.new
end

E('devo visualizar json objects') do
    @response = @search_cep_api.get_resp_api()
    puts @response.code
end

E('status code 200') do
    expect(@response.code).to eq(200);
end

Quando('busco pelo cep {string}') do |cep|
    @search_cep_api.get_cep(cep)
    puts @response.code
    expect(@response.code).to eq(200);
end

Entao('devo visualizar as informações do cep {string}') do |cep|
    expect(@response['cep']).to eq(cep)
end

E('o endereço com o o logradouro {string}, o bairro {string}') do |logradouro, bairro|
    expect(@response['logradouro']).to eq(logradouro)
    expect(@response['bairro']).to eq(bairro)
end

E('a cidade de {string} no estado de {string}') do |localidade, uf|
    expect(@response['localidade']).to eq(localidade)
    expect(@response['uf']).to eq(uf)
end
