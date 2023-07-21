class FoodFacade 

  def search(search_param)
    response = FoodService.call("/search?query=#{search_param}")[:foods]
    create_foods(response)
  end


end

private

def create_foods(data)
  data.map do |datum|
    Food.new(datum)
  end
end