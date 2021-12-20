class SearchController < ApplicationController
  def index
    @members = AirbenderFacade.members(search_params)
  end

  private

  def search_params
    params[:nation].gsub("_", "+")
  end
end
