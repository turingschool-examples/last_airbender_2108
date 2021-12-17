class MemberFacade

  def self.member_information(nation_name)
    member_data = MemberService.member_information(nation_name)

    member_data.map do |data|
      Member.new(data)
    end
  end
end
