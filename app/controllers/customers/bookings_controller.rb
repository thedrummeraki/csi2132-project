module Customers
  class BookingsController < ApplicationController
    include BookingsHelper
    before_action :authenticate_customer!

    def index
      @bookings = current_customer.bookings.order('start_date desc')
    end

    def show
      @booking = Booking.find(params[:id])
    end

    def new
      @booking = Booking.new(
        hotel_id: params[:hotel_id],
        room_number: params[:room_number]
      )
    end

    def create
      @booking = Booking.new(booking_params)
      @booking.customer_sin = current_customer.sin
      @booking.status = :started
      if @booking.save
        redirect_to customers_bookings_path, notice: "Your booking was successful!"
      else
        redirect_to new_customers_booking_path, alert: @booking.errors.to_a.join(', ')
      end
    end

    def destroy
      @booking = Booking.find(params[:id])
      if @booking.update(status: :cancelled)
        option = {notice: "This booking was successfully cancelled."}
      else
        option = {alert: "Oh no, we were not able to cancel this booking!"}
      end
      redirect_to customers_bookings_path, **option
    end

    def archive
      @booking = Booking.find(params[:booking_id])
      if @booking.update(status: 'archived')
        redirect_to customers_bookings_path, notice: "Booking successfully archived."
      else
        redirect_to customers_bookings_path, alert: @booking.string_errors
      end
    end

    private

    def update_booking_params
      params.require(:booking).permit(
        :status
      )
    end

    def booking_params
      params.require(:booking).permit(
        :start_date,
        :end_date,
        :room_number,
        :hotel_id
      )
    end
  end
end
