module Employees
  class RentingsController < ApplicationController
    before_action :authenticate_employee!

    def index
      @rentings = Renting.all.order(:id)
    end

    def new
      @booking = Booking.new
    end

    def create
      @booking = Booking.new(booking_params)
      @booking.employee_sin = current_employee.sin
      @booking.status = :started
      if @booking.save
        if @booking.can_check_in? && @booking.check_in!
          redirect_to employees_rentings_path, notice: "The customer '#{@booking.customer.full_name}' has been checked in."
        else
          redirect_to new_employees_renting_path(@renting), alert: @renting.string_errors
        end
      else
        redirect_to new_employees_renting_path, alert: @booking.string_errors
      end
    end

    def check_out
      @renting = Renting.find(params[:renting_id])
      if @renting.check_out!
        redirect_to employees_rentings_path, notice: "The customer '#{@renting.customer.full_name}' has successfully been checked out."
      else
        redirect_to employees_rentings_path, alert: @renting.string_errors
      end
    end

    def archive
      @renting = Renting.find(params[:renting_id])
      if @renting.update(status: 'archived')
        redirect_to employees_rentings_path, notice: "Rental successfully archived."
      else
        redirect_to employees_rentings_path, alert: @renting.string_errors
      end
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
