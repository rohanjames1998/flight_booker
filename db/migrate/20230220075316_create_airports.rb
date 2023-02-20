class CreateAirports < ActiveRecord::Migration[7.0]
  def change
    create_table :airports do |t|
      t.string :code_name,   null: false
      t.string :city_name,   null: false

      t.timestamps
    end
  end
end
