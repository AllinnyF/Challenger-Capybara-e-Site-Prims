require 'httparty'

class ViaCepApi
    include HTTParty
    base_uri "https://viacep.com.br"


  def get_resp_api()
    self.class.get("/ws/01001000/json/")
  end

  def get_cep(cep)
    self.class.get("/ws/#{cep}/json/")
  end

end