class NrelFacade

  def initialize(zip_code)
    @zip = zip_code
    @_stations = nil
  end

  def stations
    stations.map do |station|
      binding.pry
    end
  end

  private

  def stations
    @_stations = service.stations
  end

  def service
    NrelService.new(@zip)
  end

end
