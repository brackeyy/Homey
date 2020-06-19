class PagesController < ApplicationController

  skip_before_action :authenticate_user!

  def home
    @flats = Flat.all.order(created_at: :desc).first(6)
  end
end
