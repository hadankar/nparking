class Place < ActiveRecord::Base
  belongs_to :user, foreign_key: "user_id", class_name: "User"
  validates :title, presence: true, length: { minimum: 2 }
  validates :address, presence: true, length: { minimum: 2 }
  geocoded_by :address
  after_validation :geocode
end
