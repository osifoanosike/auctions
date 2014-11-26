class AddUserIdToAuctionItems < ActiveRecord::Migration
  def change
    add_column :auction_items, :user_id, :integer
  end
end
