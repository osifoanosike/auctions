class AddAttachmentImageToAuctionItems < ActiveRecord::Migration
  def self.up
    change_table :auction_items do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :auction_items, :image
  end
end
