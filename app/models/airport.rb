class Airport < ApplicationRecord
  has_many :arriving_flights, foreign_key: :arrival_airport_id, class_name: :flight, dependent: :destroy
  has_many :departing_flights, foreign_key: :departure_airport_id, class_name: :flight, dependent: :destroy

  validates: :code_name, presence: true, length: { in: 3..4 }
  validates: :city_name, presence: true, length: { maximum: 15 }
end
