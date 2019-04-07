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

  def true_false_icon_for(value, size: 24)
    content_tag :i, class: 'material-icons', style: "font-size: #{size}px;" do
      (!!value ? 'done' : 'close')
    end
  end

  def badge_for(model)
    return unless model.respond_to?(:status)
    colour_badge(model.status)
  end

  def boolean_badge(value)
    value ? colour_badge('yes') : colour_badge('no')
  end

  def colour_badge(value)
    color = nil
    case value
    when 'started'
      color = 'info'
    when 'complete', 'regular', 'yes'
      color = 'success'
    when 'cancelled', 'manager', 'no'
      color = 'danger'
    when 'checked-out'
      color = 'warning'
    else
      color = 'secondary'
    end
    content_tag :span, class: "badge badge-#{color}" do
      value
    end
  end

end
