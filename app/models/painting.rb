class Painting < ApplicationRecord
  belongs_to :user
  mount_uploader :photo, PhotoUploader
  validates :style, inclusion: { in: ["Nature", "Abstract", "Nude", "Impressionism", "Cubism"] }

  # def unavailable_dates
  #   bookings.pluck(:start_date, :end_date).map do |range|
  #     { from: range[0], to: range[1] }
  #   end
  # end

end
