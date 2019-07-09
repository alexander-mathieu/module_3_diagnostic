class FoodsIndexFacade
  attr_reader :query_params

  def initialize(query_params)
    @query_params = query_params
  end

  def total_results
    results[:end]
  end

  def total_foods
    results[:total]
  end

  def foods
    results[:item].map do |food_attributes|
      Food.new(food_attributes)
    end
  end

  private

  def results
    @_results ||= datagov_service.foods_search
  end

  def datagov_service
    @_datagov_service ||= DatagovService.new(@query_params)
  end
end
