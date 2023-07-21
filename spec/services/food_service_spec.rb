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
      response = FoodService.call('/api/v1/foods/search?query="sweetpotatoes"')
      expect(response).to be_a Hash
      expect(response[:data]).to be_a Array

      food_data = response[:data].first
      expect(food_data).to have_key(:id)
      expect(food_data[:id]).to be_a String

      expect(food_data).to have_key(:attributes)
      expect(food_data[:attributes]).to be_a Hash

      expect(food_data[:attributes]).to have_key(:name)
      expect(food_data[:attributes][:name]).to be_a String

      expect(food_data[:attributes]).to have_key(:description)
      expect(food_data[:attributes][:description]).to be_a String

      expect(food_data[:attributes]).to have_key(:unit_price)
      expect(food_data[:attributes][:unit_price]).to be_a Float

      expect(food_data[:attributes]).to have_key(:merchant_id)
      expect(food_data[:attributes][:merchant_id]).to be_an Integer
    end
  end
end