class Subject < ApplicationRecord
  has_and_belongs_to_many :professors
  has_many :ratings

  validates :name, presence: true
end
