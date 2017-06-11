class Place < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 2 }
  validates :alias, presence: true, length: { minimum: 2 }
  validates :address, presence: true, length: { minimum: 2 }
end
