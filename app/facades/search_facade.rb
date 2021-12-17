class SearchFacade
  class << self
    def fire_nation
      SearchService.fire_nation.map do |character|
        Character.new(character)
      end
    end
  end
end
