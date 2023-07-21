class FoodsController < ApplicationController
  def index
    @search_results = FoodFacade.new.search(params[:q])
  end
end