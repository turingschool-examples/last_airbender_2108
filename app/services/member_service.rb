class MemberService
  def self.all_members(nation)
  content = conn.get("api/v1/characters?affiliation=#{nation}")
  results = (parse_response(content))
  results.map do |m|
    Member.new(m)
  end
end

  def self.member_details(id)
    content = conn.get("/api/v1/characters/#{id}")
    results = (parse_response(content.body))[:data]
    results
  end

  def self.parse_response(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: "https://last-airbender-api.herokuapp.com")
  end
end
