class Booking < ApplicationRecord
  has_many :passengers
  belongs_to :flight

  accepts_nested_attributes_for :passengers, reject_if: ->(attributes){ attributes['name'].blank? || attributes['email'].blank? }
end
