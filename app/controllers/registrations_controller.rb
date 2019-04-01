# app/controllers/registrations_controller.rb
class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    begin
      address = Address.create(customer_address_params)
    rescue
    ensure
      customer = Customer.new(customer_params)
      customer.registration_date = Time.now
      customer.save
      redirect_to  '/', notice: 'Registration successful!'
    end
  end

  def update
    if customer_signed_in?
      if current_customer.update(update_customer_params)
        redirect_to edit_customer_registration_path, notice: 'Your account has successfully been updated.'
      else
        redirect_to edit_customer_registration_path, alert: current_customer.string_errors
      end
    else
      super
    end
  end

  private

  def customer_params
    params.require(:customer).permit(
      :full_name,
      :email,
      :password,
      :password_confirmation,
      :street_number,
      :street_name,
      :city,
      :province_state,
      :postal_code,
      :country,
      :sin
    )
  end

  def update_customer_params
    params.require(:customer).permit(
      :full_name,
      :email,
      :password,
      :password_confirmation,
      :street_number,
      :street_name,
      :city,
      :province_state,
      :postal_code,
      :country
    ).delete_if { |k, v| v.empty? }
  end

  def customer_address_params
    params.require(:customer).permit(
      :street_number,
      :street_name,
      :city,
      :province_state,
      :postal_code,
      :country
    )
  end
end
