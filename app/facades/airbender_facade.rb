class AirbenderFacade
  def self.search_members_by_nation(nation)
    searched = AirbenderService.search_nation("#{nation}")
    member = searched.map do |data|
      Member.new(data)
    end
    member
  end

  def self.first_25(nation)
    AirbenderService.search_nation("#{nation}&perPage=25&page=1")
  end
end
