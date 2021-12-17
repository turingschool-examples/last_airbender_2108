class SearchService
  def self.search(nation)
    response = conn.get("characters?affiliation=#{nation}")
    json = JSON.parse(response.body, symbolize_names: true)
    json[:results]
  end
end

  def self.conn
    Faraday.new(url: "https://last-airbender-api.herokuapp.com/api/v1/") do |faraday|
    end
  end