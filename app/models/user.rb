class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :owned_paintings, class_name: "Painting"
  has_many :bookings
  has_many :booked_paintings, through: :bookings, source: :painting
  mount_uploader :photo, PhotoUploader

  def bookings_by_status(status)
    owned_paintings = self.owned_paintings
    bookings_by_others = []
    owned_paintings.each do |painting|
      Booking.where(painting_id: painting.id).each do |booking|
        bookings_by_others << booking
      end
    end

    bookings_by_others.select { |booking| booking.confirmed == status }
  end
end
