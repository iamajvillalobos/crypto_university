class Rating < ApplicationRecord
  belongs_to :professor

  validates :amount, presence: true
end
