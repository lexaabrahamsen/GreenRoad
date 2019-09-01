class Zip < ApplicationRecord
  has_many :zip_pickups
  has_many :pickups, through: :zip_pickups
end
