class RemovePreviousPaperclip < ActiveRecord::Migration
  def change

  	remove_column :auction_items, :image_file_name, :string
    remove_column :auction_items, :image_file_size, :string
    remove_column :auction_items, :image_content_type, :string

  end
end
