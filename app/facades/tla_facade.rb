class TlaFacade
  def self.affiliated_characters(team)
      characters = TlaService.affiliated_characters(team)
      characters.map do |data|
        Character.new(data)
      end
  end
end
