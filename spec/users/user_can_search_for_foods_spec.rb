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

      it 'I see 531 items returned for my search' do
        expect(page).to have_content('531 Results for sweet potatoes')
      end

      it 'I see a list of the 10 most relevant items with a NDB number, name, group, data source and manufacturer' do
        expect(page).to have_content('Displaying Top 10:')

        within('.food-search-results') do
          within('#food-45094945') do
            expect(page).to have_content("Name: ONE POTATO TWO POTATO, PLAIN JAYNES, SWEET POTATO CHIPS, UPC: 785654000544")
            expect(page).to have_content("Group: Branded Food Products Database")
            expect(page).to have_content("NDB Number: 45094945")
            expect(page).to have_content("Data Source: LI")
            expect(page).to have_content("Manufacturer: Dieffenbach's Potato Chips")
          end

          within('#food-45165952') do
            expect(page).to have_content("Name: TERRA, SWEET POTATO CHIPS, PUMPKIN SPICE SWEETS, UPC: 728229014751")
            expect(page).to have_content("Group: Branded Food Products Database")
            expect(page).to have_content("NDB Number: 45165952")
            expect(page).to have_content("Data Source: LI")
            expect(page).to have_content("Manufacturer: THE HAIN CELESTIAL GROUP, INC.")
          end
        end
      end
    end
  end
end
