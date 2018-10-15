class CreateBookReleases < ActiveRecord::Migration[5.2]
  def change
    create_table :book_releases do |t|
      t.integer :author_id, null: false
      t.integer :book_id, null: false

      t.timestamps
    end
  end
end
