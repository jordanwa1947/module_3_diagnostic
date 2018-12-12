class NrelFacade

  def initialize(zip_code)
    @zip = zip_code
    @_stations = nil
  end

  def stations
    stations = service.stations
  end

  private

  def service
    NrelSerivce.new(@zip)
  end

end
