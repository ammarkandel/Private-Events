require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'associations' do
    it { should belong_to(:creator).class_name('User') }
    it { should have_many(:enrollments) }
    it { should have_many(:attendees) }
  end

  describe 'validations' do
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:location) }
  end
end
