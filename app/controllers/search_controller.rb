class SearchController < ApplicationController

  autocomplete :address, :area

  def index
    @area = search_params[:area]
    @capacity = search_params[:capacity]
    @hotel_chain_id = search_params[:hotel_chain]
    @category = search_params[:category]
    @size = search_params[:size]
    @price = search_params[:price]

    search = Search.new
    search.analyze!(search_params)
    @rooms_parts = search.rooms.each_slice(3).to_a
  end

  private

  def search_params
    params.require(:search).permit(
      :area,
      :capacity,
      :hotel_chain,
      :category,
      :size,
      :price
    )
  end

end
