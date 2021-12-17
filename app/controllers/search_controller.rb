class SearchController < ApplicationController
  def index
    @benders = SearchFacade.airbender_details
    @all_fire_benders = SearchFacade.total_benders
  end
end
