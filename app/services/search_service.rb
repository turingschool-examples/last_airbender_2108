class SearchService
  class << self
    def get_url(url)
      parse_data(conn.get(url))
    end

    def fire_nation
      get_url("characters?affiliation=Fire+Nation&perPage=1000&page=NUMBER")
    end

    def conn
      Faraday.new(url: "https://last-airbender-api.herokuapp.com/api/v1/")
    end

    def parse_data(response)
      test = JSON.parse(response.body, symbolize_names: true)
    end
  end
end
