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
  @booking = Booking.new(booking_params_create)
    @booking.user = current_user
    @booking.flat = @flat
    authorize @booking

      if @booking.save!
        redirect_to dashboard_path
      else
        render :new
      end
end

# def edit
#   @booking = Booking.find(params[:id])
#   authorize @booking
# end

# def update
#   if @booking.update(booking_params_edit)
#       redirect_to @booking, notice: 'Booking was successfully updated.'
#     else
#       render :edit
#     end
#   authorize @booking
# end

# def destroy
#   authorize @booking
# end


private

def booking_params_edit
  params.require(:booking).permit(:status)
end

def booking_params_create
  params.require(:booking).permit(:status, :start_date, :end_date)
end

end
