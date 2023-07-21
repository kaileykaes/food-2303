class FoodService
  class << self
    def call(path)
      response = conn.get(path)
      parse_data(response)
    end

    private

    def conn
      Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/foods") do |faraday|
        faraday.headers["X-API-Key"] = ENV["X-API-KEY"]
      end
    end

    def parse_data(data)
      JSON.parse(data.body, symbolize_names: true)
    end
  end
end
