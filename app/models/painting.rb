class Painting < ApplicationRecord
  belongs_to :user
  has_many :photos
  mount_uploader :photo, PhotoUploader
  validates :style, inclusion: { in: ["Nature", "Abstract", "Nude", "Impressionism", "Cubism"] }
end
