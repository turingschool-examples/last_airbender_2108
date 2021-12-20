class AirbenderFacade
  def self.search_members_by_nation(nation)
    searched = AirbenderService.search_nation("#{nation}")
    member = searched.map do |data|
      Member.new(data)
    end
    member
  end
  # name this more accurately -- these are members, not a single member.

  def self.first_25(nation)
    # this should return objects, use poro to create objects
    # Since you're not creating character objects,
    # you have to access this object in the view like a hash.
    # You should have your facade method create objects out of all of
    # the data, so that you can access the data like an object.
    AirbenderService.search_nation("#{nation}&perPage=25&page=1")
  end
end
