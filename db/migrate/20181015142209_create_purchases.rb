class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.integer :user_id, null: false
      t.integer :book_id, null: false

      t.timestamps
    end
  end
end
