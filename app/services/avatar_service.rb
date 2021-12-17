class AvatarService
  def self.nation_search(search)
    conn = get_url(url: "http://last-airbender-api.herokuapp.com")
    response = conn.get("/api/v1/characters?affiliation=#{search}")

    json = JSON.parse(response.body, symbolize_names: true)
    json
  end
  def self.get_url(url)
  Faraday.new(url)
end
end
