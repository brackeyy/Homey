class PagesController < ApplicationController
  def home
    @flats = Flat.all.order(created_at: :desc).first(6)
  end
end
