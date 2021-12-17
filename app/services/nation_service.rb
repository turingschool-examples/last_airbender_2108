class NationService
  def self.nation_members(endpoint)
    conn = Faraday.new(url: "https://last-airbender-api.herokuapp.com")
    response = conn.get(endpoint)

    data = JSON.parse(response.body, symbolize_names: true)
  end

  def self.fire_nation_members
    nation_members("/api/v1/characters?affiliation=Fire+Nation&perPage=500&page=1")
  end

  def self.air_nomads_members
    nation_members("/api/v1/characters?affiliation=Air+Nomad&perPage=500&page=1")
  end

  def self.earth_kingdom_members
    nation_members("/api/v1/characters?affiliation=Earth+Kingdom&perPage=500&page=1")
  end
  
  def self.water_tribes_members
    nation_members("/api/v1/characters?affiliation=Water+Tribe&perPage=500&page=1")
  end
end