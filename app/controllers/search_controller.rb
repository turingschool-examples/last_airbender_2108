class SearchController < ApplicationController
  def index
    @benders = SearchFacade.airbender_details
  end
end
