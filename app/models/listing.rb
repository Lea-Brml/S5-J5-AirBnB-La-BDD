class Listing < ApplicationRecord

  validates :available_beds, presence: true
  validates :available_beds, numericality: { only_integer: true, greater_than: 0}
  validates :price, presence: true
  validates :price, numericality: { only_integer: true, greater_than: 0}
  validates :description, presence: true
  validates :description, length: { minimum: 140 }
  validates :welcome_message, presence: true

  belongs_to :user
  belongs_to :city
  has_many :reservations

end
