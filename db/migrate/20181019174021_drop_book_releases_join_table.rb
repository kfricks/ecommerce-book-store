class DropBookReleasesJoinTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :book_releases
  end
end
