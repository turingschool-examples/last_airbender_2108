class CharactersFacade
  def self.characters_search(query)
    characters = CharactersService.get_characters(query)

    characters.map do |data|
      Character.new(data)
    end
  end
end
