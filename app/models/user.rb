class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :owned_paintings, class_name: "Painting"
  has_many :bookings
  has_many :booked_paintings, through: :bookings, source: :painting
  mount_uploader :photo, PhotoUploader
end
