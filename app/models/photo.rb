class Photo < ApplicationRecord
  belongs_to :painting
  mount_uploader :url, PhotoUploader
end
