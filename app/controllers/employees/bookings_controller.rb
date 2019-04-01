module Employees
  class BookingsController < ApplicationController
    before_action :authenticate_employee!

    def index
      @bookings = current_employee.bookings
    end

    # An employee has requested to covert a booking into a renting
    def update
      @booking = Booking.find(params[:id])
      if @booking.can_check_in? && (@rent = @booking.check_in!)
        redirect_to rent_path(@rent)
      else
        redirect_to employees_bookings_path, alert: @booking.string_errors
      end
    end

    def destroy
      @booking = Booking.find(params[:id])
      if @booking.update(status: :archived)
        redirect_to
      else
        redirect_to employees_booking_path(@booking), alert: @booking.string_errors
      end
    end
  end
end
