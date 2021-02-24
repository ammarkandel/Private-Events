class Event < ApplicationRecord
  has_many :enrollments
  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
  has_many :attendees, through: :enrollments, source: :user
  scope :past, -> { where('date < ?', Date.today) }
  scope :upcoming, -> { where('date >= ?', Date.today) }
end
