class NationFacade

  def self.members(nation)
    members = NationService.get_members(nation)
    members.map do |member|
      NationMember.new(member)
    end
  end
end
