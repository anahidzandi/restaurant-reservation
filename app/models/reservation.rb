class Reservation < ApplicationRecord
  has_and_belongs_to_many :tables
  accepts_nested_attributes_for :tables

  validates :date, presence: true
  validates :seating_capacity, presence: true
end
