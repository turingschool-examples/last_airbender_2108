class SearchController < ApplicationController
  def index
    @nation = params[:nation]
    @first_25 = AirbenderFacade.first_25("nation")
    @members = AirbenderFacade.search_members_by_nation("nation")
  end

  #consider private method to return formatted searched nation
end
