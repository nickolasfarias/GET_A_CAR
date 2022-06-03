class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :model, presence: true, length: { maximum: 22 }
  validates :price, presence: true
  validates :model, presence: true
  validates :fuel, presence: true
  validates :consumption, presence: true
  validates :seats, presence: true
  validates :doors, presence: true
  validates :description, presence: true
  validates :address, presence: true
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_model, against: %i[model], using: { tsearch: { prefix: true } }
end
