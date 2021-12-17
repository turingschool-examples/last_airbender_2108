class SearchFacade
  class << self
    def airbender_details
      first_20 = SearchService.get_data("api/v1/characters?affiliation=fire+nation&page=1")
      second_20 = SearchService.get_data("api/v1/characters?affiliation=fire+nation&page=2")

      total_results = first_20 + second_20

      total_results.take(25).map do |result|
        Airbender.new(result)
      end
    end

    def total_benders
      @all_fire_benders = []
      all_benders = SearchService.get_data("api/v1/characters")

      all_benders.each do |bender|
        if bender[:affiliation].include?("Fire Nation")
          @all_fire_benders << bender
        end
      end
    end
  end
end
