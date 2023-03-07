require 'rails_helper'

RSpec.describe Flight, type: :model do
  describe 'associations' do
    it { should have_many(:bookings) }
    it { should have_many(:passengers).through(:bookings) }
    it { should belong_to(:arrival_airport).class_name('Airport')}
    it { should belong_to(:departure_airport).class_name('Airport') }
  end

  describe 'validations' do
    it { should validate_presence_of(:duration) }
    it { should validate_presence_of(:departure_time) }
  end
end
