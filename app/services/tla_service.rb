class TlaService
  def self.affiliated_characters(team)
    conn = get_url(url: "http://last-airbender-api.herokuapp.com")
    team = team.split("_")
    response = conn.get("/api/v1/characters?affiliation=#{team[0]}+#{team[1]}&perPage=500&page=1")
    parse_response(response)
  end


  private
      def self.get_url(url)
        Faraday.new(url)
      end

      def self.parse_response(response)
        JSON.parse(response.body, symbolize_names: true)
      end
end