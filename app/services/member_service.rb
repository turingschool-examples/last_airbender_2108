class MemberService
  def self.all_members(nation)
  content = conn.get("/api/v1/characters?affilliation=#{nation}")
  content2 = conn.get("/api/v1/characters?affilliation=#{nation}/perPage=100&page=2")
  results = (parse_response(content))[:results]
  results2 = (parse_response(content2))[:results]

  (results << results2).flatten!

  results.map do |m|
    Movie.new(m)
  end
end

  def self.member_details(id)
    content = conn.get("/api/v1/characters/#{id}")
    results = (parse_response(content.body))[:data]
    results
  end

  def self.parse_response(response)
    JSON.parse(response, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: "https://last-airbender-api.herokuapp.com")
  end
end
