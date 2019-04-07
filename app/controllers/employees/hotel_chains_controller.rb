module Employees
  class HotelChainsController < ApplicationController
    before_action :authenticate_manager!

    def new
      @hotel_chain = HotelChain.new
    end

    def index
      @hotel_chains = HotelChain.all
    end

    def show
      @hotel_chain = HotelChain.find(params[:id])
      @hotels = @hotel_chain.hotels.order(:id)
    end

    def update
      @hotel_chain = HotelChain.find(params[:id])
      if @hotel_chain.update(hotel_chains_params)
        redirect_to employees_hotel_chain_path(@hotel_chain), notice: "Hotel chain data was successfully updated."
      else
        redirect_to employees_hotel_chain_path(@hotel_chain), alert: @hotel_chain.string_errors
      end
    end

    private

    def hotel_chains_params
      params.require(:hotel_chain).permit(
        :contact_email,
        :name,
        :phone_number,
        :street_name,
        :street_number,
        :postal_code,
        :city,
        :province_state,
        :country
      )
    end

  end
end
