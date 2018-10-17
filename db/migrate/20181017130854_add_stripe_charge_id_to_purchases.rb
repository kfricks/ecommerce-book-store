class AddStripeChargeIdToPurchases < ActiveRecord::Migration[5.2]
  def up
    add_column    :purchases, :stripe_charge_id, :string
    change_column :purchases, :stripe_charge_id, :string, null: false
  end

  def down
    remove_column :purchases, :stripe_charge_id, :string
  end
end
