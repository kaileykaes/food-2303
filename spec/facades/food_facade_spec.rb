

require 'rails_helper'

RSpec.describe FoodFacade do
  before(:each) do
    @ff = FoodFacade.new
  end

  describe 'methods' do
    it '#search' do 
      search_results = @ff.search('sweetpotatoes')

      # expect(search_results).
    end
  end
end