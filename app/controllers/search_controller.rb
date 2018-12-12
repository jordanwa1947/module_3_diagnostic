class SearchController < ApplicationController

  def index
    @facade = NrelFacade.new(params['q'])
  end
end
