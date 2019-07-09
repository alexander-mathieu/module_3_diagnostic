require 'rails_helper'

RSpec.describe Food, type: :model do
  before :each do
    attributes = { ndbno: 12345,
                   name: 'Super Food',
                   group: 'Super Food Group',
                   ds: 'Data Source',
                   manu: 'Manufacturer' }

    @food = Food.new(attributes)
  end

  it 'exists' do
    expect(@food).to be_a(Food)
  end

  it 'has_attributes' do
    expect(@food.ndb.to_i).to eq(12345)
    expect(@food.name).to eq('Super Food')
    expect(@food.group).to eq('Super Food Group')
    expect(@food.data_source).to eq('Data Source')
    expect(@food.manufacturer).to eq('Manufacturer')
  end
end
