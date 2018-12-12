class NrelService

  def initialize(zip_code)
    @zip = zip_code
  end

  def stations
    get_json
  end

  private

  def get_json
    response = conn.get

    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'https://developer.nrel.gov/api/alt-fuel-stations/v1.json') do |faraday|

      faraday.params['api_key'] = ENV['NREL_KEY']
      faraday.params['format'] = 'JSON'
      faraday.params['fuel_type'] = "all"
      faraday.params['zip'] = "#{@zip}"
      faraday.adapter Faraday.default_adapter
    end
  end
end
