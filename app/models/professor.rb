class Professor < ApplicationRecord
  has_many :ratings
  has_and_belongs_to_many :subjects

  validates :first_name, presence: true
  validates :last_name, presence: true

  def average_rating
    ratings.average(:amount).to_i
  end
end
