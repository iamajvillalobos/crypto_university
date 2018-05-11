class Rating < ApplicationRecord
  belongs_to :professor
  belongs_to :subject

  validates :amount, presence: true
end
