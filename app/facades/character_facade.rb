class CharacterFacade
  class << self 
    def get_all_characters(nation_param)
      CharacterService.get_nation_characters(nation_param)
      binding.pry
    end 
  end 
end 