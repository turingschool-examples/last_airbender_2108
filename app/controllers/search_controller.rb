class SearchController < ApplicationController
  def index
    @members = AirbenderFacade.search_members_by_nation(params[:nation])
    # require "pry"; binding.pry
  end
end
