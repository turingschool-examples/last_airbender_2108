class AirbenderService
  def self.conn
    Faraday.new(url: 'https://last-airbender-api.herokuapp.com/api/v1/')
  end
  
  def self.search_nation(nation)!!
    response = conn.get("characters?perPage=497&page=1&affiliation=#{nation}")
    data = JSON.parse(response.body, symbolize_names: true)
  end
end
