# frozen_string_literal: true

FactoryBot.define do
  factory :event do
    title { 'Title' }
    description { 'Text' }
    date_time { Time.now }
    location { 'Text' }
  end
end
