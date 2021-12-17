class MemberService
  def self.all_members
    content = conn.get("/api/v1/characters")
    results = (parse_response(content.body))[:data]
    results
  end

  def self.item_details(id)
    content = conn.get("/api/v1/items/#{id}")

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
