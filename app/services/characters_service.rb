class CharactersService

  def self.get_characters(query)
    #get characters of query and limit 25 
    response = conn("/characters?perPage=25&page=1&affiliation=#{query}").get

    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn(url)
    Faraday.new("https://last-airbender-api.herokuapp.com/api/v1#{url}")
  end
end
