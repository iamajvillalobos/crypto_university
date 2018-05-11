class Professor < ApplicationRecord
  has_many :ratings
  has_and_belongs_to_many :subjects

  validates :first_name, presence: true
  validates :last_name, presence: true
end
