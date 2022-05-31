class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :model, presence: true
  validates :price, presence: true
  validates :model, presence: true
  validates :fuel, presence: true
  validates :consumption, presence: true
  validates :seats, presence: true
  validates :doors, presence: true
  validates :description, presence: true
  validates :address, presence: true
end
