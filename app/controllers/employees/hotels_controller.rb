module Employees
  class HotelsController < ApplicationController
    before_action :authenticate_manager!

    def new
      @hotel = Hotel.new
    end

    def index
      @hotels = Hotel.all
    end

    def show
      @hotel = Hotel.find(params[:id])
      @rooms = @hotel.rooms
    end

    def update
      @hotel = Hotel.find(params[:id])
      if @hotel.update(hotels_params)
        redirect_to employees_hotel_path(@hotel), notice: "Hotel data was successfully updated."
      else
        redirect_to employees_hotel_path(@hotel), alert: @hotel.string_errors
      end
    end

    private

    def hotels_params
      params.require(:hotel).permit(
        :contact_email,
        :name,
        :phone_number,
        :street_name,
        :street_number,
        :postal_code,
        :city,
        :province_state,
        :country,
        :manager_sin
      )
    end

  end
end
