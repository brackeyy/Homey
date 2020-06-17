class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  has_many_attached :service
  # has_many :users, through: :bookings

  validates :title, :city, :price, :description, presence: true

end
