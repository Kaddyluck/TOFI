class AddBalanceToFond < ActiveRecord::Migration[5.0]
  def change
    add_column :fonds, :already_collected, :integer, default: 0
    add_column :fonds, :full_price, :integer, default: 0
  end
end
