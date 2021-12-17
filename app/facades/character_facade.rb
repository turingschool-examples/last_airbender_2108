class CharacterFacade
  def self.character_info(nation)
    {
      nation: nation.sub('_', ' ').titleize,
      characters: CharacterService.first_25_characters(nation),
      count: CharacterService.all_characters(nation).count
    }
  end
end
