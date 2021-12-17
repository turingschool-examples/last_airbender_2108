class CharacterFacade
  class << self
    def find_nation
    end

    def count_characters
      characters = CharacterService.fire_nation
      array = []
      characters.map do |data|
        array << Character.new(data)
      end
      array.count
    end
  end
end
