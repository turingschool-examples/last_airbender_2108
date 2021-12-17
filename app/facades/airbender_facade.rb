class AirbenderFacade

  def self.nation_members(nation)
    members = AirbenderService.nation_members(nation, per_page = 500)

    members.map do |member|
      Member.new(member)
    end
  end
end
