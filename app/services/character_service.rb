class CharacterService
  def self.get_data(endpoint)
    conn = Faraday.new(url: "https://last-airbender-api.herokuapp.com/")
    response = conn.get(endpoint)
    data = response.body
    JSON.parse(data, symbolize_names:  true)
  end
end
