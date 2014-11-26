class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :designation
      t.string :department
      t.string :fullname
      t.string :facebook
      t.string :twitter
      t.string :bbm

      t.timestamps
    end
  end
end
