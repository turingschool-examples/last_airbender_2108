class AtlaService
  # def get_url(affiliation)
  #   # 497 is the total number of characters listed by the api
  #   Faraday.get('https://last-airbender-api.herokuapp.com/api/v1/characters', {perPage: 497, affiliation: affiliation})
  # end

  def self.fire_nation
    response = Faraday.get('https://last-airbender-api.herokuapp.com/api/v1/characters?perPage=497&affiliation=fire+nation')
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.water_tribe
    response = Faraday.get('https://last-airbender-api.herokuapp.com/api/v1/characters?perPage=497&affiliation=water+tribe')
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.earth_kingdom
    response = Faraday.get('https://last-airbender-api.herokuapp.com/api/v1/characters?perPage=497&affiliation=earth+kingdom')
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.air_nomads
    response = Faraday.get('https://last-airbender-api.herokuapp.com/api/v1/characters?perPage=497&affiliation=air+nomads')
    JSON.parse(response.body, symbolize_names: true)
  end
end