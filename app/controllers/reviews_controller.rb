class ReviewsController < ApplicationController

  def create #POST
    # 1.fetch the booking from the parametized url
    @booking = Booking.find(params[:booking_id])
    # @flat = Flat.find(params[:flat_id])
    # 2.create the review with the strong params
    @review = Review.new(the_reviews_strong_params)
    # 3. we want to assign the review to the booking of the url
    @review.booking =  @booking
    # @review.booking = @booking
    # raise
    # 4.save the review instance in the DB
    # @review.save
    # 5.redirect the user
    authorize @review
    # RENDER VALIDATION ERRORS IF USER NOT FILLING THE PROPER INFOS
    if @review.save #save returns you a boolean
      redirect_to dashboard_path
    else
      render :new #this is not a new http request, this is just rendering the action again
    end
  end


  private

  def the_reviews_strong_params
    params.require(:review).permit(:content, :rating)
  end

end


