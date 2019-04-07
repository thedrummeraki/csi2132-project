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

  def action_as_employee_for(booking_or_renting)
    case booking_or_renting.status
    when 'started'
      content_tag :div, class: 'btn-group w-100' do
        link_to('Check in', employees_booking_check_in_path(booking_or_renting), class: 'btn btn-sm btn-success') + \
        link_to('Cancel', employees_booking_path(booking_or_renting), class: 'btn btn-sm btn-danger', method: :delete, data: { confirm: 'Are you sure?' })
      end
    when 'complete', 'cancelled', 'renting'
      content_tag :div, class: 'btn-group w-100' do
        link_to('Check out', employees_renting_check_out_path(booking_or_renting), class: 'btn btn-sm btn-warning', method: :delete)
      end
    when 'checked-out'
      content_tag :div, class: 'btn-group w-100' do
        link_to('Archive', employees_renting_archive_path(booking_or_renting), class: 'btn btn-sm btn-outline-secondary', method: :delete )
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
      link_to 'Archive', customers_booking_archive_path(booking), class: 'btn btn-sm btn-outline-secondary', method: :delete
    else
      content_tag :div, class: '' do
        'ー'
      end
    end
  end
end
