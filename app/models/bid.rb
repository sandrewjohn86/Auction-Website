class Bid < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :auction

  validates_numericality_of :value
end
