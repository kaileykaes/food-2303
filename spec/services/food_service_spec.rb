require 'rails_helper'

RSpec.describe FoodService do 
  before(:each) do 
    @fs = FoodService.new
  end

  describe 'initialize' do 
    it 'exists' do 
      expect(@fs).to be_a FoodService
    end
  end

  describe 'class method' do 
    it '#call' do 
      response = FoodService.call('/foods/list')
      expect(response).to be_a Hash
      expect(response[:data]).to be_a Array

      food_data = response[:data].first
      expect(food_data).to have_key(:gtinUpc)
      expect(food_data[:gtinUpc]).to be_a String

      expect(food_data).to have_key(:brandOwner)
      expect(food_data[:brandOwner]).to be_a String

      expect(food_data[:attributes]).to have_key(:description)
      expect(food_data[:attributes][:description]).to be_a String

      expect(food_data[:attributes]).to have_key(:ingredients)
      expect(food_data[:attributes][:ingredients]).to be_a String
    end
  end
end