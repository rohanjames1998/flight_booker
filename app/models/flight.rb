class Flight < ApplicationRecord
  belongs_to :arrival_airport, class_name: "Airport"
  belongs_to :departure_airport, class_name: "Airport"

  validates :duration, presence: true
  validates :departure_time, presence: true

  def flight_details
    details = "From #{departure_airport.code_name} -> To #{arrival_airport.code_name}, On #{departure_time.strftime("%Y/%m/%d")} #{departure_time.strftime("%H:%M")} UTC, Flight Duration = #{duration}"
  end
end
