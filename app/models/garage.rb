class Garage < ApplicationRecord
  belongs_to :user
  validates %i(title description address availability phone_number dimensions price_per_day price_per_hour), presence: true
  validates %i(title address), uniqueness: true
  has_one_attached :photo
end
