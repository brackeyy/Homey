class FlatsController < ApplicationController
  def index
    @flats = policy_scope(Flat)

  end

  def show
    @flat = Flat.find(params[:id])

    @markers =
      [{
        lat: @flat.latitude,
        lng: @flat.longitude
      }]
      authorize @flat
  end

  def new
    @flat = Flat.new
    authorize @flat
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.user = current_user
    authorize @flat
      if @flat.save!
        redirect_to flats_path
      else
        render :new
      end
  end

  private

  def flat_params
    params.require(:flat).permit(:title, :city, :description, :price, :photo, :cooking, :sexy_time, :cleaning, :change_diapers, :laundry, :gardening)
  end

end

