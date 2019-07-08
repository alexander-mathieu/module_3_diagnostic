require 'rails_helper'

RSpec.describe 'As a user' do
  describe 'when I visit the homepage' do
    describe "and fill in the search form with 'sweet potatoes' and click 'search'" do
      before :each do
        visit '/'

        fill_in :q, with: 'sweet potatoes'
        click_button 'Search'
      end

      it "I'm taken to /foods" do
        expect(current_path).to eq('/foods')
      end

      # it 'I see 531 items returned for my search' do
      #
      # end
      #
      # it 'I see a list of the 10 foods most relevant to sweet potatoes' do
      #
      # end
      #
      # it 'for each of the foods returned I see an NDB number, name, group, data source and manufacturer' do
      #
      # end
    end
  end
end

# ```
# As a user,
# When I visit "/"
# And I fill in the search form with "sweet potatoes"
# (Note: Use the existing search form)
# And I click "Search"
# Then I should be on page "/foods"
# Then I should see a total of the number of items returned by the search. (531 for sweet potatoes)
# Then I should see a list of ten foods sorted by relevance.
#
# And for each of the foods I should see:
# - The food's NDB Number
# - The food's name
# - The food group to which the food belongs
# - The food's data source
# - The food's manufacturer
# ```
