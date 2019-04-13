class RoomsController < ApplicationController
  def show
    @room = Room.find(params[:id])
    @similar_rooms = @room.similar.to_a[0..3]
    @other_rooms = @room.other.to_a[0..3]
    @booking = Booking.new(start_date: params[:start_date], end_date: params[:end_date])
    @available = !@room.is_occupied?(params[:start_date], params[:end_date])
  end
end
