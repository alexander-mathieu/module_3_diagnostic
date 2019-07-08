require 'rails_helper'

RSpec.describe DatagovService do
  subject = DatagovService.new({ q: 'sweet potatoes' })

  it 'exists' do
    expect(subject).to be_a(DatagovService)
  end

  context '#foods_search' do
    it 'returns a list of foods using search params' do
      stub_data = File.read('./spec/fixtures/sweet_potato_results.json')

      search = stub_request(:get, 'https://api.nal.usda.gov/ndb/search').to_return(status: 200, body: stub_data)

      foods = search[:body]

      expect(foods_search).to be_a(Hash)
      expect(foods_search.count).to eq(10)
      expect(foods_search[]).to be_a Hash
      expect(foods_search.first).to have_key(:name)
      expect(foods_search.first).to have_key(:html_url)
    end
  end
end
