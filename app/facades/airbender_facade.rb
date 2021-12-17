class AirbenderFacade
  def self.search_members_by_nation(nation)
    AirbenderService.search_nation(nation)
    # search_nation = AirbenderService.search_nation(nation)

    # member_objects = search_nation[:foods].map do |nation|
    #   Member.new(nation)
    # end
    # {total_hits: search_nation[:totalHits], foods: food_objects}
  end
end
