class Flight < ApplicationRecord
  has_many :bookings
  has_many :passengers, through: :bookings
  belongs_to :arrival_airport, class_name: "Airport"
  belongs_to :departure_airport, class_name: "Airport"

  validates :duration, presence: true
  validates :departure_time, presence: true

  def flight_details
    details = "From #{departure_airport.code_name} -> To #{arrival_airport.code_name}, On #{departure_time.strftime("%Y/%m/%d")} #{departure_time.strftime("%H:%M")} UTC, Flight Duration = #{duration}"
  end

  def arrival_time
    # Since duration is stored as a string and not a dateTime object we first
    # convert it to a Time object.
    parsed_duration = Time.parse(duration)
    travel_hours = parsed_duration.hour
    travel_mins = parsed_duration.min
    arrival_time = departure_time + travel_hours.hours + travel_mins.minutes
  end
end
