class ChangeDurationColumnTypeInFlights < ActiveRecord::Migration[7.0]
  def change
    change_column :flights, :duration, :string
  end
end
