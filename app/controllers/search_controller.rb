class SearchController < ApplicationController
  def index
    members_params = {}
    members_params[:nation] = params[:nation]
    @members = BendersFacade.get_members(members_params)
  end
end
