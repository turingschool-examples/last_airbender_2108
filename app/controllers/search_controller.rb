class SearchController < ApplicationController
  def index
    @members = MemberService.all_members(params[:affilliation])
  end

end
