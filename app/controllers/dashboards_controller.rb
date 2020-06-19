class DashboardsController < ApplicationController
# skip_after_action :verify_policy_scoped, only: [:show] 

def show
  @bookings = Booking.where(user: current_user)
  @flats = Flat.where(user: current_user)
  authorize :dashboard, :show?
  @review = Review.new
end


end
