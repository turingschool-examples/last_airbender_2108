class CharacterFacade
  def self.first_25_characters(nation)
    CharacterService.first_25_characters(nation)
  end

  def self.all_characters_count(nation)
    CharacterService.all_characters(nation).count
  end
end
