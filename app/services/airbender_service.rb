class AirbenderService
  def self.conn
    Faraday.new(url: 'https://last-airbender-api.herokuapp.com/api/v1/')
  end
# Faraday.new(url: 'https://last-airbender-api.herokuapp.com/api/v1/characters?perPage=10&page=5')
# https://last-airbender-api.herokuapp.com/api/v1/characters?perPage=10&page=5
  def self.search_nation(nation)
    response = conn.get("characters?affiliation=#{nation}")
    data = JSON.parse(response.body, symbolize_names: true)
  end

  #create service call method to return more than defaulted 20
end
