class Passenger < ApplicationRecord
  belongs_to :booking
  has_many :flights, through: :booking

  validates :name, presence: true, length: { in: 3..20 }
  validates :email, presence: true, length: { in: 8..20 }
end
