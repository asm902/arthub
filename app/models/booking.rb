class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :painting

  scope :confirmed, -> { where(confirmed: true) }
  scope :to_confirm, -> { where(confirmed: false) }

  def self.confirm_all_bookings
    self.update_all(confirmed: true)
  end
end
