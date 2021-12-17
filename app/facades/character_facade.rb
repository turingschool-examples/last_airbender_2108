class CharacterFacade
  class << self
    def find_nation
      characters = CharacterService.fire_nation
      characters.map do |data|
        Character.new(data)
      end
    end
  end
end
