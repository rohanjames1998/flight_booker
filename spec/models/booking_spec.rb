require 'rails_helper'

RSpec.describe Booking, type: :model do
  describe 'associations' do
    it { should have_many(:passengers) }
    it { should belong_to(:flight) }
  end
  it { should accept_nested_attributes_for(:passengers) }
end
