class FlightsController < ApplicationController
  def index
    @flights = Flight.all.includes(:arrival_airport, :departure_airport)
    @arrival_airport_options = @flights.map { |f| [f.arrival_airport.code_name, f.arrival_airport.id] }
    @departure_airport_options = @flights.map { |f| [f.departure_airport.code_name, f.departure_airport.id] }
    @departure_date = @flights.map { |f| [f.departure_time.strftime("%Y/%b/%d"), f.departure_time] }
  end
end
