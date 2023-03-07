require 'rails_helper'

RSpec.describe Airport, type: :model do
  describe 'associations' do
    it { should have_many(:arriving_flights).class_name('Flight') }
    it { should have_many(:departing_flights).class_name('Flight') }
  end

  describe 'validations' do
    it { should validate_presence_of(:code_name) }
    it { should validate_length_of(:code_name).is_at_least(3).is_at_most(4) }
    it { should validate_presence_of(:city_name) }
    it { should validate_length_of(:city_name).is_at_most(25) }
  end
end
