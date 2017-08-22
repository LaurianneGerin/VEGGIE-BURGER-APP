class Restaurant < ApplicationRecord
  has_many :burgers
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
