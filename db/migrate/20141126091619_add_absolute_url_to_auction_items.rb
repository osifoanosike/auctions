class AddAbsoluteUrlToAuctionItems < ActiveRecord::Migration
  def change
    add_column :auction_items, :absolute_url, :string
  end
end
