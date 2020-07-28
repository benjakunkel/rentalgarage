class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :garage
  validates :start_at, :finish_at, :price, :reservation_status, presence: true
end
