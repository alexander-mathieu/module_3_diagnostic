class FoodsIndexFacade
  attr_reader :query_params

  def initialize(query_params)
    @query_params = query_params
  end

  def total_foods
    datagov_service.foods_search[:list][:total]
  end

  def foods(limit)
    foods = datagov_service.foods_search[:list][:item]

    foods[0..(limit)].map do |food_attributes|
      Datagov::Food.new(food_attributes)
    end
  end

  private

  def datagov_service
    DatagovService.new(@query_params)
  end
end
