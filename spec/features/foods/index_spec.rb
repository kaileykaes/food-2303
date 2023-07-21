require 'rails_helper'

RSpec.describe 'Foods Search Index', type: :feature do
  before(:each) do
    visit root_path
    fill_in :q, with: "sweet potatoes"
    click_on "Search"
  end

  describe 'results' do
    it 'search routes to /foods index' do 
      expect(current_path).to eq(foods_path)
    end

    xit 'displays number of items returned by search' do 
      expect(page).to have_css(".result_number")
      #(sweet potatoes should find more than 30,000 results)
    end
    
    it "lists ten foods that contain 'sweet potatoes'" do
      within (".results") do 
        expect(page).to have_css(".food", count: 10)
      end
    end

    it 'lists attributes of those foods' do 
      within(first(".food")) do 
        expect(page).to have_css(".code")
        expect(page).to have_css(".description")
        expect(page).to have_css(".brand-owner")
        expect(page).to have_css(".ingredients")
      end
    end
  end
end