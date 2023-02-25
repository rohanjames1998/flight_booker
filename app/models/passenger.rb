class Passenger < ApplicationRecord
  has_many :flights, through: :bookings
  belongs_to :bookings

  validates :name, presence: true, length: { in: 3..20 }
  validates :email, presence: true, length: { in: 8..20 }
end
