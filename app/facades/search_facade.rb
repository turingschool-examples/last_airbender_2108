class SearchFacade
  def self.search_results(nation)
    characters = SearchService.search_by_nation(nation)
    require 'pry'; binding.pry
    characters.each do |character|
      Character.new(character)
    end
  end
end