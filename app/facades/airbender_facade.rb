class AirbenderFacade
  def self.members_by_nation(nation)
    AirbenderService.search_nation(nation)
  end

  def self.members(nation)
    nation_data = members_by_nation(nation)

    members = nation_data.map do |data|
      Member.new(data)
    end
    members
  end
end
