class SearchController < ApplicationController
  def index
    @characters = SearchFacade.search_results(params[:nation])
  end
end