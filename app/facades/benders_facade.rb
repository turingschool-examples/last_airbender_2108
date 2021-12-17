class BendersFacade
  class << self

    def get_members(affiliation)
      params = {affiliation: affiliation}
      members_data = BendersService.call_api("/api/v1/characters?", params)
#make sure members_data is what i think it is.
      members_data.map do |member_data|
        Member.new(member_data)
      end
    end

  end
end
