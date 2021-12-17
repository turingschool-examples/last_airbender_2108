class SearchController < ApplicationController
  def index
    @results = SearchFacade.members(params[:nation])
  end
end