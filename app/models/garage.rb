class Garage < ApplicationRecord
  belongs_to :user
  has_many :reservation
  validates :title, :description, :address, :availability, :phone_number, :dimensions, :price_per_day, :price_per_hour, presence: true
  validates :title, :address, uniqueness: true
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
