module Customers
  class BookingsController < ApplicationController
    include BookingsHelper
    before_action :authenticate_customer!

    def index
      @bookings = current_customer.bookings
    end
  end
end
