class MembersController < ApplicationController

  def index
    @members = MemberFacade.member_information(nation_name)
  end
end
