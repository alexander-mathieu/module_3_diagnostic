class FoodsIndexFacade
  attr_reader :query_params

  def initialize(query_params)
    @query_params = query_params
  end

  def foods
    foods = datagov_service.foods_search[:list][:item]

    foods.map do |food_attributes|
      Datagov::Food.new(food_attributes)
    end
  end

  private

  def datagov_service
    DatagovService.new(@query_params)
  end
end
