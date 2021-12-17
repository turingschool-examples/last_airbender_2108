class SearchController < ApplicationController

  def index
    nation = params[:nation].gsub("_", "+")
    @members = NationFacade.members(nation)
  end
end
