class AuthenticatedController < ApplicationController
  layout 'authenticated'

  before_action :authenticate_customer!
end
