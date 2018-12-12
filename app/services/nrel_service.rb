class NrelService

  def initialize(zip_code)
    @zip = zip_code
  end

  private

  def conn
    Faraday.new(url: 'https://developer.nrel.gov/api/alt-fuel-stations/v1.json' do |faraday|

      faraday.headers['api_key'] = ENV['NREL_KEY']
    )
  end
end
