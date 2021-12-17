class AirbenderService
  def self.conn
    Faraday.new(url: 'https://last-airbender-api.herokuapp.com/api/v1/')
  end

  def self.search_nation(nation)
    response = conn.get("characters?affiliation=#{nation}")
    data = JSON.parse(response.body, symbolize_names: true)
  end
end
