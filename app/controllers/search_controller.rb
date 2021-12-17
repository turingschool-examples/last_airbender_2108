class SearchController < ApplicationController
  def index
    @members = MembersService.all_members
  end

end
