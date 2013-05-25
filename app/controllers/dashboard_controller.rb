class DashboardController < ApplicationController
  before_filter :authenticate_user!

  def index
    @devices = Device.where(user_id: current_user.id)
  end
end
