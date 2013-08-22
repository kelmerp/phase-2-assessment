class User < ActiveRecord::Base
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :email, format: { with: /.*@.*\..*/ }
  validates :password_digest, presence: true

  has_many :event_attendances
  has_many :created_events, foreign_key: "event_id"
  has_many :attended_events, through: :event_attendances, foreign_key: "event_id"

  has_secure_password
end
