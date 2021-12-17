class CharacterFacade
  class << self
    def get_fire
      CharacterService.fire 
    end
  end
end