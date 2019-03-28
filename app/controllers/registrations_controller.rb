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
    super
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
