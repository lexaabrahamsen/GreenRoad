class Pickup < ApplicationRecord
  has_many :zip_pickups
  has_many :zips, through: :zip_pickups
end
