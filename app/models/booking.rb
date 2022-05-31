class Booking < ApplicationRecord
  belongs_to :car
  belongs_to :user
  validates :started_at, presence: true, uniqueness: true
  validates :ended_at, presence: true, uniqueness: true
end
