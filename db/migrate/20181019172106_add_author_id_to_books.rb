class AddAuthorIdToBooks < ActiveRecord::Migration[5.2]
  def up
    add_column    :books, :author_id, :integer
    change_column :books, :author_id, :integer, null: false
  end

  def down
    remove_column :books, :author_id, :integer
  end
end
