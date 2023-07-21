require 'rails_helper'

RSpec.describe FoodFacade do
  before(:each) do
    @ff = FoodFacade.new
  end

  describe 'methods' do
    # it '#search' do 
    #   search_results = @ff.search('sweetpotatoes')

    #   expect(search_results).to be_a Hash
    #   expect(search_results).to have_key([:foods])

    #   expect(search_results[:foods]).to be_an Array

    #   result = search_results[:foods].first
    #   expect(result).to have_key[:gtinUpc]
    #   expect(result).to have_key[:brandOwner]
    #   expect(result).to have_key[:description]
    #   expect(result).to have_key[:ingredients]
    # end

    it '#search' do 
      foods = @ff.search
      expect(foods).to be_a Array
      expect(foods.first).to be_a Food
    end
  end
end