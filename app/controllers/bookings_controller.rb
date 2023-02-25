class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight_id])
    passengers_count.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    @flight = Flight.find(params[:booking][:flight_id])

    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new, status: :unprocessable_entity, flight_id: @flight.id
    end
  end

  private
  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end

  def passengers_count # This method returns the number of passengers
    params[:passengers].to_i
  end
end
