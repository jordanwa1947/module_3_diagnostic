class NrelService

  def initialize(zip_code)
    @zip = zip_code
  end

  def stations
    get_json
  end

  private

  def get_json
    binding.pry
  end

  def conn
    Faraday.new(url: 'https://developer.nrel.gov/api/alt-fuel-stations/v1.json') do |faraday|

      faraday.headers['api_key'] = ENV['NREL_KEY']
      faraday.headers['format'] = 'JSON'
      faraday.adapter Faraday.default_adapter
    end
  end
end
