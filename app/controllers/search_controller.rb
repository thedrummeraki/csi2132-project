class SearchController < ApplicationController

  def index
    @search = Search.new
    @search.analyze!(search_params)
  end

  private

  def search_params
    params.require(:search).permit(
      :area,
      :capacity,
      :hotel_chain_id,
      :category,
      :size,
      :price
    )
  end

end
