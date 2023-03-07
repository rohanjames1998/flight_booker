require 'rails_helper'

RSpec.describe Passenger, type: :model do
  describe 'associations' do
    it { should have_many(:flights).through(:booking) }
    it { should belong_to(:booking) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_least(3).is_at_most(20) }
    it { should validate_presence_of(:email) }
    it { should validate_length_of(:email).is_at_least(8).is_at_most(20) }
  end
end
