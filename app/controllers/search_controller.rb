class SearchController < ApplicationController
  def index
    @members = AirbenderFacade.first_25(params[:nation])
    @total_members = AirbenderFacade.total_members(params[:nation])

    nation = params[:nation]
    nation["+"] = " "
    @nation = nation.titleize
  end
end
