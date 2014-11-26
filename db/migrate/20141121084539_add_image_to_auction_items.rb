class AddImageToAuctionItems < ActiveRecord::Migration
  def change
    add_column :auction_items, :image_file_name, :string
    add_column :auction_items, :image_file_size, :string
    add_column :auction_items, :image_content_type, :string
  end
end
