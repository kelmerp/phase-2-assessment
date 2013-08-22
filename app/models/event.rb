class Event < ActiveRecord::Base
  has_many :event_attendaces
  has_many :attendees, through: :event_attenaces, foreign_key: :user_id
  belongs_to :creator, foreign_key: :user_id
end
