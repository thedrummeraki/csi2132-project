module Employees
  class EmployeesController < ApplicationController
    before_action :authenticate_manager!

    def index
      @employees = Employee.all.order(:sin)
    end

    def show
      @employee = Employee.find(params[:id])
    end

    def update
      @employee = Employee.find(params[:id])
      if @employee.update(employees_params)
        redirect_to employees_employees_path, notice: "Employee account data was successfully updated."
      else
        redirect_to employees_employee_path(@employee), alert: @employee.string_errors
      end
    end

    private

    def employees_params
      params.require(:employee).permit(
        :full_name,
        :role,
        :manager_sin,
        :hotel_id,
        :street_name,
        :street_number,
        :city,
        :province_state,
        :country,
        :postal_code,
        :email
      )
    end

  end
end
