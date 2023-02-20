class Airport < ApplicationRecord
  has_many :arriving_flights, foreign_key: :arrival_airport_id, class_name: :flight, dependent: :destroy
  has_many :departing_flights, foreign_key: :departure_airport_id, class_name: :flight, dependent: :destroy

end
