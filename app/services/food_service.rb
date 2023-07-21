class FoodService
  class << self
    def call(path)
      response = conn.get(path) do |faraday|
        faraday.headers["X-API-KEY"] = ENV["X-API-KEY"]
      end
      require 'pry'; binding.pry
      parse_data(response)
    end

    private

    def conn
      Faraday.new("https://api.nal.usda.gov/fdc")
    end

    def parse_data(data)
      JSON.parse(data.body, symbolize_names: true)
    end
  end
end
