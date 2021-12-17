class BendersFacade
  class << self
    response = Faraday.get("https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=Fire+Nation")
    member_data = JSON.parse(response.body, symbolize_names: true)

    
  end
end
