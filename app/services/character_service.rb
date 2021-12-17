class CharacterService
  def self.conn
    Faraday.new('https://last-airbender-api.herokuapp.com/')
  end

  def self.parse(url, params = nil)
    response = conn.get(url, params)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.first_25_characters(nation)
    nation.sub!('_', ' ')
    params = {affiliation: nation, perPage: '25'}
    parse('api/v1/characters', params)
  end

  def self.all_characters(nation)
    nation.sub!('_', ' ')
    params = {affiliation: nation, perPage: '9999'}
    parse('api/v1/characters', params)
  end
end
