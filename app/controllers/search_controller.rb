class SearchController < ApplicationController
  def index
    @characters = CharactersFacade.characters_search(
      params[:nation].gsub("fire_nation", "Fire+Nation")
                     .gsub("air_nomads", "Air+Nomads")
                     .gsub("water_tribes", "Water+Tribes")
                     .gsub("earth_kingdom", "Earth+Kingdom")
                   )
  end
end
