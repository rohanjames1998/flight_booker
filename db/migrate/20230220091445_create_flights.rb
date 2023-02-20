class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.time :duration
      t.datetime :departure_time

      t.timestamps
    end
    add_reference :flights, :arrival_airport, references: :airports, index: true
    add_reference :flights, :departure_airport, references: :airports, index: true

    add_foreign_key :flights, :airports, column: :arrival_airport_id
    add_foreign_key :flights, :airports, column: :departure_airport_id
  end
end
