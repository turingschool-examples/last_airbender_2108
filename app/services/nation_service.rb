class NationService

  def self.get_members(nation)
    response = Faraday.get("https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=#{nation}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
