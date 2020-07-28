class Garage < ApplicationRecord
  belongs_to :user
  validates :title, :description, :address, :availability, :phone_number, :dimensions, :price_per_day, :price_per_hour, presence: true
  validates :title, :address, uniqueness: true
  has_one_attached :photo
end
