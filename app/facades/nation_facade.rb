class NationFacade
  def self.fire_nation_members
    @members = NationService.fire_nation_members
    @members.map do |member_data|
      Member.new(member_data)
    end
  end

  def self.air_nomads_members
    @members = NationService.air_nomads_members
    @members.map do |member_data|
      Member.new(member_data)
    end
  end

  def self.earth_kingdom_members
    @members = NationService.earth_kingdom_members
    @members.map do |member_data|
      Member.new(member_data)
    end
  end

  def self.water_tribes_members
    @members = NationService.water_tribes_members
    @members.map do |member_data|
      Member.new(member_data)
    end
  end
end