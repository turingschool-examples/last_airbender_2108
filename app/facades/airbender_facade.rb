class AirbenderFacade
  class << self
    def top_40
      page1 = MoviesService.get_data('movie/top_rated?page=1')
      page2 = MoviesService.get_data('movie/top_rated?page=2')

      total_results = page1[:results] + page2[:results]

      total_results.map do |result|
        Airbender.new(result)
      end
    end
end
