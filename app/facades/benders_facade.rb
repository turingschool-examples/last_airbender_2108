class BendersFacade
  class << self

    def get_members(affiliation)
      params = {affiliation: affiliation}
      members_data = BendersService.call_api("/api/v1/characters?perPage=25&page=1", params)

      members_data.map do |member_data|
        Member.new(member_data)
      end
    end

  end
end
