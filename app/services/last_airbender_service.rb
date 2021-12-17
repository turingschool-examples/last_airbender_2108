class LastAirbenderService
  def self.first_25(nation)
    nation['_'] = '+'
    content = conn.get("/api/v1/characters?affiliation=#{nation}&perPage=25&page=1")
    members = parse_response(content)
    members.map do |member|
      Member.new(member)
    end
  end

  def self.total_members(nation)
    content = conn.get("/api/v1/characters?affiliation=#{nation}&perPage=500&page=1")
    members = parse_response(content)
    total_members = members.length
  end

  def self.parse_response(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: "https://last-airbender-api.herokuapp.com")
  end
end
