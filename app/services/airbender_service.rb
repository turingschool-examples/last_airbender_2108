class AirbenderService

  def self.nation_members(nation, per_page = 500)
    nation = nation.gsub('_', '+')
    call_api("/api/v1/characters?affiliation=#{nation}&perPage=#{per_page}")
  end

  private

  def self.call_api(path)
    response = connection.get(path)
    parse_data(response)
  end

  def self.connection
    Faraday.new(url: 'https://last-airbender-api.herokuapp.com')
  end

  def self.parse_data(response)
    JSON.parse(response.body, symbolize_names: true)
  end

end
