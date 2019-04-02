class HotelsController < ApplicationController

  before_action :authenticate_manager!, only: [:new, :create, :destroy]

end
