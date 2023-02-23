class AddColumnsToPassengers < ActiveRecord::Migration[7.0]
  def change
    add_column :passengers, :name, :string, limit: 20
    add_column :passengers, :email, :string, limit: 20
  end
end
