class SearchController < ApplicationController
  def index
    @members = LastAirbenderService.first_25(params[:nation])
    @total_members = LastAirbenderService.total_members(params[:nation])

    nation = params[:nation]
    nation["+"] = " "
    @nation = nation.titleize
  end
end
