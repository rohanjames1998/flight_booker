class AddForeignKeysToBookings < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :flight, foreign_key: true, index: true
    add_reference :bookings, :passenger, foreign_key: true, index: true
  end
end
