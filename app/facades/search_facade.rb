class SearchFacade
  def self.members(nation)
    if nation == 'fire_nation'
      AtlaService.fire_nation.map do |character|
        Character.new(character)
      end
    elsif nation == 'water_tribes'
      AtlaService.water_tribe.map do |character|
        Character.new(character)
      end
    elsif nation == 'earth_kingdom'
      AtlaService.earth_kingdom.map do |character|
        Character.new(character)
      end
    elsif nation == 'air_nomads'
      AtlaService.air_nomads.map do |character|
        Character.new(character)
      end
    end
  end

  # def initialize_objects(characters)
  #   characters.map do |character|
  #     Character.new(character)
  #   end
  # end
end