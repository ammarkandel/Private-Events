describe User, type: :model do
  describe 'associations' do
    it { should have_many(:created_events).class_name('Event') }
    it { should have_many(:enrollments) }
    it { should have_many(:attended_events) }
  end
end
