module Employees
  class RentingsController < ApplicationController
    before_action :authenticate_employee!

    def index
      @rentings = Renting.all
    end

    def new
      @booking = Booking.new
    end

    def create
      @booking = Booking.new(booking_params[:booking])
      @booking.employee_sin = current_employee.sin
      @booking.status = :started
      puts booking_params
      if @booking.save
        if @booking.can_check_in? && check_in!
          redirect_to employees_rentings_path, notice: "The customer '#{@renting.customer.full_name}' has been checked in."
        else
          redirect_to new_employees_renting_path(@renting), alert: @renting.string_errors
        end
      else
        redirect_to new_employees_renting_path, alert: @booking.string_errors
      end
    end

    def check_out
      @renting = Renting(params[:id])
    end


    def booking_params
      params.require(:booking).permit(
        :customer_sin,
        :start_date,
        :end_date,
        :room_number,
        :hotel_id
      )
    end

  end
end
