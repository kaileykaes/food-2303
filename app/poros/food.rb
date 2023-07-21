class Food
  attr_reader :code, 
              :description, 
              :brand_owner, 
              :ingredients
  
  def initialize(attributes)
    @code = attributes[:gtinUpc].to_i
    @description = attributes[:description]
    @brand_owner = attributes[:brandOwner]
    @ingredients = attributes[:ingredients]
  end
end