class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :cars
  has_many :bookings
  has_one_attached :photo
  validates :email, presence: true, uniqueness: true
  validates :age, presence: true
  validates :password, presence: true
end
