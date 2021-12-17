class CharacterService
  class << self

    def get_fire
      response = conn.get("/api/v1/characters?affiliation=NATION+FIRE")
      parse_data(response)
    end

    private
    def conn
      Faraday.new ("https://last-airbender-api.herokuapp.com")
    end

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end