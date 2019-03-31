class SearchController < ApplicationController

  def index
    @search = Search.new
    @search.analyze!(search_params)
    @area = search_params[:area]
    @capacity = search_params[:capacity]
    @hotel_chain_id = search_params[:hotel_chain_id]
    @category = search_params[:category]
    @size = search_params[:size]
    @price = search_params[:price]
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
