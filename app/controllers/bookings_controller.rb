class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @flight = Flight.find(params[:booking][:flight_id])

    if @booking.save
      redirect_to booking_path(@booking)
    else
      #Passing flight id to display flight details when page reloads.
      render :new, status: :unprocessable_entity, flight_id: @flight.id
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private
  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end
end
