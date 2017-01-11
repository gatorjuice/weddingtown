class Wedding < ApplicationRecord
  validates :name, uniqueness: true
  validates :reception_id, :ceremony_id, :name, presence: true

  belongs_to :ceremony
  belongs_to :reception
end
