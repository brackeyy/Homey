class FlatsController < ApplicationController

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.user = current_user
      if @flat.save
        redirect_to @flats
      else
        render :new
      end
  end




private

def flat_params
  params.require(:flat).permit(:title, :city, :description, :price)
end

end
