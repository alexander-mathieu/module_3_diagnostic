require 'rails_helper'

RSpec.describe DatagovService do
  subject = DatagovService.new({ q: 'sweet potatoes' })

  it 'exists' do
    expect(subject).to be_a(DatagovService)
  end

  context '#foods_search' do
    it 'returns a list of foods using search params' do
      foods_search = subject.foods_search

      expect(foods_search).to be_a(Hash)
      expect(foods_search[:list][:item].count).to eq(150)
      expect(foods_search[:list][:item]).to be_an(Array)
      expect(foods_search[:list][:item].first).to have_key(:ndbno)
      expect(foods_search[:list][:item].first).to have_key(:name)
      expect(foods_search[:list][:item].first).to have_key(:group)
      expect(foods_search[:list][:item].first).to have_key(:ds)
      expect(foods_search[:list][:item].first).to have_key(:manu)
    end
  end
end
