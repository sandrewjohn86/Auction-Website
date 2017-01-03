class Product < ApplicationRecord
	belongs_to :user, optional: true
	has_one :auction

	def has_auction?
		auction.present?
	end
end
