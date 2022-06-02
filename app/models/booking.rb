class Booking < ApplicationRecord
  belongs_to :car
  belongs_to :user
  validates :started_at, presence: true, uniqueness: { scope: :car, message: "Not available" }
  validates :ended_at, presence: true, uniqueness: { scope: :car, message: "Not available" }
end
