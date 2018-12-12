class NrelFacade

  def initialize(zip_code)
    @zip = zip_code
    @_stations = nil
  end

  def stations
    all_stations.map do |station|
      Station.new()
    end
  end

  private

  def all_stations
    @_stations = service.stations
  end

  def service
    NrelService.new(@zip)
  end

end
