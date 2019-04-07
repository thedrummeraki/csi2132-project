module Customers
  class RentingsController < ApplicationController
    before_action :authenticate_customer!

    def index
      @rentings = current_customer.rentings
    end
  end
end
