require 'rails_helper'

RSpec.describe 'Foods Search Index', type: :feature do
  before(:each) do
    visit root_path
   save_and_open_page
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
    
    it "lists ten foods that contain 'sweet potatoes'"

    it 'lists attributes of those foods'
    #The food's GTIN/UPC code
    # The food's description
    # The food's Brand Owner
    # The food's ingredients
  end
end