class AuthenticatedController < ApplicationController
  layout 'authenticated'

  before_action :authenticate_user!

  private

  def authenticate_user!
    unless logged_in?
      redirect_to '/', alert: 'You must be signed in to see this.'
    end
  end
end
