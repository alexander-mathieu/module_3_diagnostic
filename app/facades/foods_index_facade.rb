class FoodsIndexFacade
  def initialize(query_params)
    @query_params = query_params
  end

  def results
    foods = datagov_service.foods_search

    foods.map do |food_attributes|
      Food.new(food_attributes)
    end
  end

  private

  def datagov_service
    DatagovService.new(@query_params)
  end
end
