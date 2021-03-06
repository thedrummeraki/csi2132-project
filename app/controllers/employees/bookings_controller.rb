module Employees
  class BookingsController < ApplicationController
    before_action :authenticate_employee!

    def index
      # select * from bookings order by start_date asc;
      @bookings = Booking.order('start_date desc')
    end

    # An employee has requested to covert a booking into a renting
    def check_in
      @booking = Booking.find(params[:booking_id])
      if @booking.can_check_in? && @booking.check_in!
        redirect_to employees_rentings_path, notice: "#{@booking.customer.full_name} was successfully checked in!"
      else
        redirect_to employees_bookings_path, alert: @booking.string_errors
      end
    end

    def destroy
      @booking = Booking.find(params[:id])
      if @booking.update(status: :cancelled)
        option = {notice: "This booking was successfully cancelled."}
      else
        option = {alert: "Oh no, we were not able to cancel this booking!"}
      end
      redirect_to employees_bookings_path, **option
    end
  end
end
