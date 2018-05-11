class Professor < ApplicationRecord
  has_many :ratings

  validates :first_name, presence: true
  validates :last_name, presence: true
end
