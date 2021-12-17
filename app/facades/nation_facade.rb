class NationFacade

  def self.members(nation)
    members = NationService.get_members(nation)
    members.map do |member|
      NationMember.new(member, nation)
    end
  end
end
