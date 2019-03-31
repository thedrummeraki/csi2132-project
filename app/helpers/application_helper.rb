module ApplicationHelper

  def logged_in?(as: nil)
    return logged_in?(as: :customer) || logged_in?(as: :employee) if as.nil?
    return customer_signed_in? if as == :customer
    return employee_signed_in? if as == :employee
  end

  def destroy_current_session_path
    return nil unless logged_in?
    return destroy_customer_session_path if logged_in?(as: :customer)
    return destroy_employee_session_path if logged_in?(as: :employee)
  end

  def badge_for(model)
    return unless model.respond_to?(:status)
    color = nil
    case model.status
    when 'started'
      color = 'info'
    when 'complete'
      color = 'success'
    when 'cancelled'
      color = 'danger'
    else
      color = 'secondary'
    end
    content_tag :span, class: "badge badge-#{color}" do
      model.status
    end
  end

end
