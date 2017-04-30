class Package < ApplicationRecord

  geocoded_by :recipent_address
  after_validation :geocode

  validates :weight, presence: true, length: {maximum:20}
	validates :size, presence: true, length: {maximum:20}
	validates :price, presence: true
	validates :delivery_time, presence: false
	validates :warehouse_location, presence: true
  validates :recipent_address, presence: true
  validates :recipent_name, presence: true
  validates :recipent_mob, presence: true

  has_many :tasks
  belongs_to :user



end
