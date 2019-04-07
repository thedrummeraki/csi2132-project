module Employees
  class RoomsController < ApplicationController
    before_action :authenticate_employee!

    def show
      @room = Room.find(params[:id])
    end

    def update
      @room = Room.find(params[:id])
      if @room.update(room_params)
        redirect_to employees_room_path(@room), notice: "Room information was successfully saved!"
      else
        redirect_to employees_room_path(@room), alert: @room.string_errors
      end
    end

    def destroy
      @room = Booking.find(params[:id])
      if @room.update(status: :archived)
        redirect_to
      else
        redirect_to employees_room_path(@room), alert: @room.string_errors
      end
    end

    private

    def room_params
      params.require(:room).permit(
        :room_number,
        :price,
        :capacity,
        :mountain_view,
        :sea_view,
        :is_expandable,
        :hotel_id,
        :issues
      )
    end
  end
end
