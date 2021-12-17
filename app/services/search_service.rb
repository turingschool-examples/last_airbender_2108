class SearchService
  def self.search_by_nation(nation)
    nation = nation.gsub(/_/, '+')
    response = Faraday.get("http://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=#{nation}&perPage=1000")
    JSON.parse(response.body, symbolize_names: true)
  end
end

  # def self.conn
  #   Faraday.new(url: "https://last-airbender-api.herokuapp.com/api/v1/") do |faraday|
  #   end
  # end