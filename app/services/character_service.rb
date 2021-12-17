class CharacterService 
  class << self 
    def get_nation_characters(nation_param)
      response = conn.get("/api/v1/characters?affiliation=Fire+Nation&perPage=1000")
      parse_data(response)
    end 

    private

    def conn
      Faraday.new("https://last-airbender-api.herokuapp.com") do |x|
      end 
    end

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end 
end 