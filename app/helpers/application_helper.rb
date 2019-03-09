module ApplicationHelper

  def logged_in?(as: nil)
    return customer_signed_in? || employee_signed_in? if as.nil?
    return customer_signed_in? if as == :customer
    return employee_signed_in? if as == :employee
  end

end
