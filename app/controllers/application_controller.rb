class ApplicationController < ActionController::Base

  include ApplicationHelper

  def home
    if logged_in?(as: :employee)
      redirect_to employees_home_path
      return
    end
  end

  protected

  def authenticate_manager!
    authenticate_employee!
    unless current_employee.is_manager?
      redirect_to '/', alert: 'You must be logged in a manager in order to access this page.'
    end
  end
end
