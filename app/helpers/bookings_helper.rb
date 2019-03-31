module BookingsHelper
  def action_for(booking)
    if logged_in?(as: :customer)
      action_as_customer_for(booking)
    elsif logged_in(as: :employee)
      action_as_employee_for(booking)
    end
  end

  private

  def action_as_customer_for(booking)
    case booking.status
    when 'started'
      link_to 'Cancel', '#', class: 'btn btn-sm btn-outline-danger'
    when 'complete', 'cancelled'
      link_to 'Book again', '#', class: 'btn btn-sm btn-info'
    else
      content_tag :div, class: '' do
        'ー'
      end
    end
  end
end
