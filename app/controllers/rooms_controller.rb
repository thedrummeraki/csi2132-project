class RoomsController < ApplicationController
  def show
    @room = Room.find(params[:id])
    @similar_rooms = @room.similar.to_a[0..3]
    @other_rooms = @room.other.to_a[0..3]
    @booking = Booking.new
  end
end
