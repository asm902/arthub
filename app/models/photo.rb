class Photo < ApplicationRecord
  belongs_to :painting
  mount_uploader :data, PhotoUploader
end
