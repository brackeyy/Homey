class Flat < ApplicationRecord
  belongs_to :user

  validates :title, :city, :price, :description, presence: true
end
