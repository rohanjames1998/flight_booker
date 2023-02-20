class Flight < ApplicationRecord
  belongs_to :arrival_airport, class_name: :airport
  belongs_to :departure_airport, class_name: :airport

  # validates :duration, presence: true, time
  # validates :departure_time, presence: true, time
end
