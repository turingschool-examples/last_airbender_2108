class SearchFacade
  class << self
    def fire_nation
      Character.new(SearchService.fire_nation)
    end

    def character_details(characters)
      characters.map do |character|
        Character.new(character)
      end 
    end
  end
end
