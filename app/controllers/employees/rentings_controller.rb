module Employees
  class RentingsController < ApplicationController
    before_action :authenticate_employee!

    def index
      @rentings = current_employee.rentings
    end

    def new
      args = {}
      if params[:booking_id].present? && (@booking = Booking.find_by(id: params[:booking_id]))
        args[:employee_sin] = @booking.employee_sin
        args[:customer_sin] = @booking.customer_sin
        args[:start_date] = @booking.start_date
        args[:end_date] = @booking.end_date
        args[:room_number] = @booking.room_number
        args[:hotel_id] = @booking.hotel_id
      end
      @renting = Renting.new(**args)
    end

    def create
      if (@renting = Renting.create(renting_params))
        redirect_to employees_rentings_path, notice: "The customer '#{@renting.customer.full_name}' has been checked in."
      else
        redirect_to new_employees_renting_path(@renting), alert: @renting.string_errors
      end
    end

    private

    def renting_params
      params.require(:renting).params(
        :employee_sin,
        :customer_sin,
        :start_date,
        :end_date,
        :room_number,
        :hotel_id
      )
    end
  end
end
