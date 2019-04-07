module BookingsHelper
  def action_for(booking)
    if logged_in?(as: :customer)
      action_as_customer_for(booking)
    elsif logged_in?(as: :employee)
      action_as_employee_for(booking)
    end
  end

  def expired_status_for(booking)
    return unless booking.respond_to?(:expired?)
    if booking.expired?(range: :all)
      content_tag :i, class: 'material-icons text-danger' do
        'warning'
      end
    elsif booking.expired?(range: :now)
      content_tag :i, class: 'material-icons text-warning' do
        'warning'
      end
    end
  end

  private

  def action_as_employee_for(booking)
    case booking.status
    when 'started'
      content_tag :div, class: 'btn-group w-100' do
        link_to('Check in', employees_booking_check_in_path(booking), class: 'btn btn-sm btn-success') + \
        link_to('Cancel', customers_booking_path(booking), class: 'btn btn-sm btn-danger', method: :delete, data: { confirm: 'Are you sure?' })
      end
    when 'complete', 'cancelled'
      content_tag :div, class: 'btn-group w-100' do
        link_to('Check out', '#', class: 'btn btn-sm btn-warning') + \
        link_to('Archive', '#', class: 'btn btn-sm btn-outline-secondary')
      end
    else
      content_tag :div, class: '' do
        'ー'
      end
    end
  end

  def action_as_customer_for(booking)
    case booking.status
    when 'started'
      link_to 'Cancel', customers_booking_path(booking), class: 'btn btn-sm btn-outline-danger', method: :delete, data: { confirm: 'Are you sure?' }
    when 'complete', 'cancelled'
      link_to 'Book again', '#', class: 'btn btn-sm btn-info'
    else
      content_tag :div, class: '' do
        'ー'
      end
    end
  end
end
