class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos
  has_many_attached :service
  # has_many :users, through: :bookings

  validates :title, :city, :price, :description, presence: true
  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?

  include PgSearch::Model
  pg_search_scope :search_by_title_and_city,
    against: [ :title, :city ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
