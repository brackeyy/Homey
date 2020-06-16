class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings
  # has_many :users, through: :bookings

  validates :title, :city, :price, :description, presence: true
end