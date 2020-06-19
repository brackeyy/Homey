class BookingsController < ApplicationController

def index

  @bookings = policy_scope(Booking)
end

def show
  @booking = Booking.find(params[:id])
  authorize @booking
end



def create
  @flat = Flat.find(params[:flat_id])
  @booking = Booking.new(booking_params)
  @booking.user = current_user
  @booking.flat = @flat
  authorize @booking

  if @booking.save!
    redirect_to dashboard_path
  else
    render :new
  end
end

def edit
  @flat.user = current_user
  @booking.flat = @flat
  @booking = Booking.find(params[:id])
  authorize @booking
end

def update

  @booking = Booking.find(params[:id])
  authorize @booking
  @booking.status = params[:status]
  @booking.save
  redirect_to "/dashboard"


end
# def destroy
#   @booking = Booking.find(params[:id])
#   @booking.delete
#   authorize @booking
# end

private

def booking_params
  params.require(:booking).permit(:end_date, :start_date)
end

end
