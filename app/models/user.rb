class User < ActiveRecord::Base

	has_many :auction_items, dependent: :destroy

end
