class Airport < ApplicationRecord
  has_many :arriving_flights, foreign_key: :arrival_airport_id, class_name: "Flight", dependent: :delete_all
  has_many :departing_flights, foreign_key: :departure_airport_id, class_name: "Flight", dependent: :delete_all
  before_destroy :destroy_all_flights

  validates :code_name, presence: true, length: { in: 3..4 }
  validates :city_name, presence: true, length: { maximum: 25 }

  private
    def destroy_all_flights
      self.arriving_flights.destroy_all
      self.departing_flights.destroy_all
    end
end
