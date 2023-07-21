require 'rails_helper'

RSpec.describe Food do
  before(:each) do
    @food = Food.new({
      gtinUpc: "653341235244", 
      description: "CINNAMON FREEZE DRIED SWEETPOTATO SLICES, CINNAMON", 
      brandOwner: "A.M.S. Manufacturing, Inc.", 
      ingredients: "ORGANIC SWEETPOTATO, ORGANIC VIRGIN COCONUT OIL, SEA SALT, ORGANIC CEYLON CINNAMON POWDER."
    })
  end

  describe 'initialize' do
    it 'exists and has attributes' do 
      expect(@food).to be_a Food
      expect(@food.code).to eq(653341235244)
      expect(@food.description).to eq("CINNAMON FREEZE DRIED SWEETPOTATO SLICES, CINNAMON")
      expect(@food.brand_owner).to eq("A.M.S. Manufacturing, Inc.")
      expect(@food.ingredients).to eq("ORGANIC SWEETPOTATO, ORGANIC VIRGIN COCONUT OIL, SEA SALT, ORGANIC CEYLON CINNAMON POWDER.")
    end
  end
end