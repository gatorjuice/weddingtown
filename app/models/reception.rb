include Concerns::Validatable

class Reception < ApplicationRecord
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :location_id, presence: true
  validate :start_time_cannot_be_later_than_end_time

  has_one :wedding
  belongs_to :location
end
