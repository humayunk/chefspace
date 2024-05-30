class Kitchen < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_many_attached :photos

  validates :name, presence: true, length: { maximum: 100 }
  validates :address, presence: true
  validates :kitchen_type, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  validates :daily_rate, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :has_parking, inclusion: { in: [true, false] }
  validates :has_fire_safety, inclusion: { in: [true, false] }
  validates :has_refrigeration, inclusion: { in: [true, false] }
  validates :has_oven, inclusion: { in: [true, false] }
  validates :has_stove, inclusion: { in: [true, false] }
  validates :has_fryer, inclusion: { in: [true, false] }
  validates :has_dishwasher, inclusion: { in: [true, false] }
  validates :has_cookware, inclusion: { in: [true, false] }
  validates :has_cutlery, inclusion: { in: [true, false] }
  validates :availability, inclusion: { in: [true, false] }
  validates :prep_tables, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, allow_nil: true
end
