class CreateAuctionItems < ActiveRecord::Migration
  def change
    create_table :auction_items do |t|
      t.string :code
      t.string :name
      t.string :description
      t.string :status
      t.integer :quantity

      t.timestamps
    end
  end
end
