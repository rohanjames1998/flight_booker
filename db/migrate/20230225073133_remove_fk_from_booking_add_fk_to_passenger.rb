class RemoveFkFromBookingAddFkToPassenger < ActiveRecord::Migration[7.0]
  def change
    add_reference :passengers, :booking, foreign_key: true, index: true

    remove_reference :bookings, :passenger, index: true, foreign_key: true
  end
end
